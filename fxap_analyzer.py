#!/usr/bin/env python3
"""
FXAP Encryption Analyzer
Educational tool for understanding FiveM script encryption mechanisms
For defensive security research and protecting your own scripts
"""

import os
import sys
import struct
from pathlib import Path


class FXAPAnalyzer:
    """Analyzes FXAP encryption used in FiveM resources"""

    FXAP_HEADER = b'FXAP'

    def __init__(self, fxap_path):
        self.fxap_path = Path(fxap_path)
        self.key = None

    def extract_key(self):
        """Extract encryption key from .fxap file"""
        if not self.fxap_path.exists():
            raise FileNotFoundError(f"FXAP file not found: {self.fxap_path}")

        with open(self.fxap_path, 'rb') as f:
            data = f.read()

        if not data.startswith(self.FXAP_HEADER):
            raise ValueError("Invalid FXAP file: missing FXAP header")

        # FXAP format: "FXAP" + version (4 bytes) + key data
        header_size = 8  # "FXAP" (4) + version (4)
        self.key = data[header_size:]

        print(f"[+] FXAP Key extracted: {len(self.key)} bytes")
        return self.key

    def decrypt_file(self, encrypted_path, output_path=None):
        """Decrypt a single FXAP-encrypted Lua file"""
        if self.key is None:
            raise ValueError("Key not extracted. Call extract_key() first.")

        with open(encrypted_path, 'rb') as f:
            encrypted_data = f.read()

        if not encrypted_data.startswith(self.FXAP_HEADER):
            raise ValueError(f"File is not FXAP encrypted: {encrypted_path}")

        # Skip FXAP header and version
        header_size = 8
        encrypted_content = encrypted_data[header_size:]

        # XOR decryption with key
        decrypted = bytearray()
        key_len = len(self.key)

        for i, byte in enumerate(encrypted_content):
            key_byte = self.key[i % key_len]
            decrypted.append(byte ^ key_byte)

        # Write output
        if output_path:
            with open(output_path, 'wb') as f:
                f.write(decrypted)
            print(f"[+] Decrypted: {encrypted_path} -> {output_path}")

        return bytes(decrypted)

    def decrypt_directory(self, encrypted_dir, output_dir):
        """Recursively decrypt all .lua files in a directory"""
        encrypted_dir = Path(encrypted_dir)
        output_dir = Path(output_dir)

        if not encrypted_dir.exists():
            raise FileNotFoundError(f"Directory not found: {encrypted_dir}")

        output_dir.mkdir(parents=True, exist_ok=True)

        lua_files = list(encrypted_dir.rglob("*.lua"))
        print(f"[*] Found {len(lua_files)} Lua files to analyze")

        for lua_file in lua_files:
            relative_path = lua_file.relative_to(encrypted_dir)
            output_file = output_dir / relative_path

            output_file.parent.mkdir(parents=True, exist_ok=True)

            try:
                with open(lua_file, 'rb') as f:
                    data = f.read()

                # Check if file is encrypted
                if data.startswith(self.FXAP_HEADER):
                    self.decrypt_file(lua_file, output_file)
                else:
                    # Copy unencrypted files as-is
                    with open(output_file, 'wb') as f:
                        f.write(data)
                    print(f"[*] Copied (not encrypted): {lua_file}")

            except Exception as e:
                print(f"[-] Error processing {lua_file}: {e}")

    def analyze_security(self):
        """Analyze the security of FXAP encryption"""
        print("\n" + "="*60)
        print("FXAP Encryption Security Analysis")
        print("="*60)

        print(f"\n[*] Key length: {len(self.key)} bytes")
        print(f"[*] Encryption method: XOR cipher with repeating key")

        print("\n[!] SECURITY WEAKNESSES IDENTIFIED:")
        print("    1. Simple XOR cipher - easily reversible")
        print("    2. Key stored in plaintext (.fxap file)")
        print("    3. No key derivation function (KDF)")
        print("    4. Vulnerable to known-plaintext attacks")
        print("    5. Key reuse across all files in resource")

        print("\n[*] HOW TO PROTECT YOUR SCRIPTS:")
        print("    1. Use server-side logic for critical operations")
        print("    2. Implement license key validation")
        print("    3. Use code obfuscation (Luraph, IronBrew)")
        print("    4. Consider native module compilation")
        print("    5. Add integrity checks and anti-tampering")
        print("    6. Use environment-specific runtime checks")
        print("    7. Implement proper license management system")

        print("\n" + "="*60)


def main():
    print("""
╔═══════════════════════════════════════════════════════════╗
║         FXAP Encryption Security Analyzer v1.0            ║
║     Educational Tool for Defensive Security Research      ║
╚═══════════════════════════════════════════════════════════╝
""")

    if len(sys.argv) < 2:
        print("Usage:")
        print(f"  {sys.argv[0]} <fxap_file> [encrypted_dir] [output_dir]")
        print("\nExamples:")
        print(f"  {sys.argv[0]} .fxap                              # Analyze key only")
        print(f"  {sys.argv[0]} .fxap client/ decrypted/client/   # Decrypt directory")
        sys.exit(1)

    fxap_file = sys.argv[1]

    try:
        analyzer = FXAPAnalyzer(fxap_file)
        analyzer.extract_key()
        analyzer.analyze_security()

        if len(sys.argv) >= 4:
            encrypted_dir = sys.argv[2]
            output_dir = sys.argv[3]
            print(f"\n[*] Decrypting directory: {encrypted_dir}")
            analyzer.decrypt_directory(encrypted_dir, output_dir)
            print("\n[+] Decryption complete!")

    except Exception as e:
        print(f"\n[-] Error: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
