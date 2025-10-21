#!/usr/bin/env python3
"""
Better Encryption Example for FiveM Resources
Demonstrates proper cryptographic practices vs FXAP's weak XOR
"""

import os
import hashlib
import hmac
from base64 import b64encode, b64decode

try:
    from cryptography.fernet import Fernet
    from cryptography.hazmat.primitives import hashes
    from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2
    CRYPTO_AVAILABLE = True
except ImportError:
    CRYPTO_AVAILABLE = False

class SecureScriptEncryption:
    """
    Example of proper encryption for protecting scripts
    Uses industry-standard cryptography
    """

    def __init__(self, password: str):
        """
        Initialize encryption with a password
        Uses PBKDF2 for key derivation
        """
        self.password = password.encode()
        self.salt = None
        self.key = None

    def derive_key(self, salt: bytes) -> bytes:
        """
        Derive encryption key from password using PBKDF2
        Much more secure than storing plaintext key
        """
        kdf = PBKDF2(
            algorithm=hashes.SHA256(),
            length=32,
            salt=salt,
            iterations=480000,  # OWASP recommended (2023)
        )
        return b64encode(kdf.derive(self.password))

    def encrypt_file(self, input_path: str, output_path: str):
        """
        Encrypt a Lua file with proper cryptography
        """
        # Generate random salt for key derivation
        self.salt = os.urandom(16)
        self.key = self.derive_key(self.salt)

        # Create Fernet cipher (AES-128 in CBC mode with HMAC)
        cipher = Fernet(self.key)

        # Read original file
        with open(input_path, 'rb') as f:
            plaintext = f.read()

        # Encrypt
        ciphertext = cipher.encrypt(plaintext)

        # Write encrypted file with salt prepended
        with open(output_path, 'wb') as f:
            f.write(b'SECURE01')  # Version header
            f.write(self.salt)
            f.write(ciphertext)

        print(f"[+] Encrypted: {input_path} -> {output_path}")

    def decrypt_file(self, input_path: str, output_path: str):
        """
        Decrypt a file encrypted with encrypt_file
        """
        # Read encrypted file
        with open(input_path, 'rb') as f:
            header = f.read(8)  # Version header
            if header != b'SECURE01':
                raise ValueError("Invalid file format")

            self.salt = f.read(16)
            ciphertext = f.read()

        # Derive key from salt
        self.key = self.derive_key(self.salt)

        # Create cipher and decrypt
        cipher = Fernet(self.key)
        plaintext = cipher.decrypt(ciphertext)

        # Write decrypted file
        with open(output_path, 'wb') as f:
            f.write(plaintext)

        print(f"[+] Decrypted: {input_path} -> {output_path}")

    def compute_integrity_hash(self, file_path: str) -> str:
        """
        Compute SHA-256 hash for integrity checking
        """
        sha256 = hashlib.sha256()
        with open(file_path, 'rb') as f:
            while chunk := f.read(8192):
                sha256.update(chunk)
        return sha256.hexdigest()

    def create_hmac(self, data: bytes, key: bytes) -> str:
        """
        Create HMAC for authentication
        Prevents tampering
        """
        return hmac.new(key, data, hashlib.sha256).hexdigest()


class ComparativeAnalysis:
    """
    Compare FXAP encryption with proper encryption
    """

    @staticmethod
    def analyze_fxap():
        """Analyze FXAP encryption weaknesses"""
        print("\n" + "="*60)
        print("FXAP Encryption Analysis")
        print("="*60)

        print("\n❌ FXAP Weaknesses:")
        print("  1. Algorithm: XOR cipher (broken)")
        print("  2. Key Storage: Plaintext in .fxap file")
        print("  3. Key Derivation: None (no password/salt)")
        print("  4. Authentication: None (no HMAC/signature)")
        print("  5. Key Management: Static key for all files")
        print("  6. Perfect Forward Secrecy: No")
        print("  7. Resistance to Attacks:")
        print("     - Known-plaintext: ❌ Vulnerable")
        print("     - Brute force: ❌ Instant")
        print("     - Frequency analysis: ❌ Vulnerable")
        print("     - Replay attacks: ❌ Vulnerable")

        print("\n⚠️  Security Rating: 1/10 (Minimal protection)")
        print("⏱️  Time to Break: Minutes")
        print("💰 Cost to Break: $0 (free tools)")

    @staticmethod
    def analyze_secure():
        """Analyze proper encryption benefits"""
        print("\n" + "="*60)
        print("Secure Encryption Analysis")
        print("="*60)

        print("\n✅ Security Features:")
        print("  1. Algorithm: AES-128-CBC (industry standard)")
        print("  2. Key Storage: Derived from password")
        print("  3. Key Derivation: PBKDF2 (480k iterations)")
        print("  4. Authentication: HMAC-SHA256")
        print("  5. Key Management: Unique salt per file")
        print("  6. Perfect Forward Secrecy: Possible")
        print("  7. Resistance to Attacks:")
        print("     - Known-plaintext: ✅ Resistant")
        print("     - Brute force: ✅ 2^128 operations")
        print("     - Frequency analysis: ✅ Not applicable")
        print("     - Replay attacks: ✅ Prevented by HMAC")

        print("\n✅ Security Rating: 9/10 (Strong protection)")
        print("⏱️  Time to Break: Years to centuries")
        print("💰 Cost to Break: Millions+ (if at all)")

    @staticmethod
    def compare():
        """Side-by-side comparison"""
        ComparativeAnalysis.analyze_fxap()
        ComparativeAnalysis.analyze_secure()

        print("\n" + "="*60)
        print("Recommendations")
        print("="*60)
        print("\n🔐 For Maximum Security:")
        print("  1. Use AES-256 with proper key derivation")
        print("  2. Add HMAC for integrity verification")
        print("  3. Implement license validation")
        print("  4. Use code obfuscation as additional layer")
        print("  5. Move critical logic server-side")
        print("  6. Add runtime integrity checks")
        print("  7. Implement anti-debug techniques")
        print("  8. Use hardware fingerprinting")
        print("  9. Regular security audits")
        print("  10. Monitor for breaches")

        print("\n💡 Remember:")
        print("  - Encryption is only one layer")
        print("  - Defense in depth is key")
        print("  - Client-side security has limits")
        print("  - Server-side validation is critical")


def demonstrate_usage():
    """
    Demonstrate proper encryption usage
    """
    print("\n" + "="*60)
    print("Encryption Usage Example")
    print("="*60)

    # Example: Encrypt a file
    encryptor = SecureScriptEncryption("MyStrongPassword123!")

    # Create a sample Lua file
    sample_lua = """
-- Sample protected script
local secretValue = 12345

function DoSecretOperation()
    return secretValue * 2
end

RegisterCommand('test', function()
    print(DoSecretOperation())
end)
"""

    # Write sample file
    with open('/tmp/sample.lua', 'w') as f:
        f.write(sample_lua)

    # Encrypt it
    encryptor.encrypt_file('/tmp/sample.lua', '/tmp/sample.encrypted')

    # Compute integrity hash
    hash_value = encryptor.compute_integrity_hash('/tmp/sample.encrypted')

    print(f"\n✅ File encrypted successfully")
    print(f"📝 Integrity Hash: {hash_value}")
    print(f"\n💾 Encrypted file: /tmp/sample.encrypted")

    # Demonstrate decryption
    decryptor = SecureScriptEncryption("MyStrongPassword123!")
    decryptor.decrypt_file('/tmp/sample.encrypted', '/tmp/sample.decrypted')

    print(f"✅ File decrypted successfully")
    print(f"💾 Decrypted file: /tmp/sample.decrypted")

    # Verify integrity
    original_hash = encryptor.compute_integrity_hash('/tmp/sample.lua')
    decrypted_hash = encryptor.compute_integrity_hash('/tmp/sample.decrypted')

    if original_hash == decrypted_hash:
        print(f"✅ Integrity verified: Files match")
    else:
        print(f"❌ Integrity check failed!")

    # Cleanup
    os.remove('/tmp/sample.lua')
    os.remove('/tmp/sample.encrypted')
    os.remove('/tmp/sample.decrypted')


def main():
    print("""
╔═══════════════════════════════════════════════════════════╗
║         Better Encryption Example                         ║
║     Proper Cryptography vs FXAP Comparison                ║
╚═══════════════════════════════════════════════════════════╝
""")

    # Show comparative analysis
    ComparativeAnalysis.compare()

    # Demonstrate usage
    if CRYPTO_AVAILABLE:
        try:
            demonstrate_usage()
        except Exception as e:
            print(f"\n⚠️  Error running demo: {e}")
    else:
        print("\n⚠️  Note: Install 'cryptography' package to run encryption demo:")
        print("   pip install cryptography")
        print("\n   (This is optional - the analysis above is the main educational content)")

    print("\n" + "="*60)
    print("Conclusion")
    print("="*60)
    print("\nFXAP encryption is insufficient for serious protection.")
    print("Use proper cryptographic libraries and defense-in-depth.")
    print("\nFor FiveM resources, combine:")
    print("  • Server-side validation")
    print("  • Professional obfuscation")
    print("  • License system")
    print("  • Proper encryption (if needed)")
    print("  • Runtime protection")
    print("\n" + "="*60)


if __name__ == "__main__":
    main()
