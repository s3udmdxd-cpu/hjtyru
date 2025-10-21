# FXAP Security Analyzer

Educational tool for understanding FiveM script encryption and implementing better security practices.

## What This Tool Does

This analyzer demonstrates how FXAP encryption works and its security weaknesses, helping you understand how to better protect your FiveM resources.

## Installation

```bash
# No installation needed - just Python 3
python3 fxap_analyzer.py
```

## Usage

### Analyze FXAP encryption key:
```bash
python3 fxap_analyzer.py path/to/.fxap
```

### Decrypt a directory:
```bash
python3 fxap_analyzer.py path/to/.fxap encrypted_dir/ output_dir/
```

### Example:
```bash
python3 fxap_analyzer.py encrypted/l2s-dispatch/.fxap encrypted/l2s-dispatch/client/ decrypted_output/
```

## What You'll Learn

1. **How FXAP encryption works**
   - Key storage mechanism
   - XOR cipher implementation
   - File format structure

2. **Security weaknesses**
   - Why simple XOR is vulnerable
   - Key management flaws
   - Attack vectors

3. **How to protect your scripts**
   - Server-side security
   - Proper obfuscation
   - License systems
   - Integrity checking

## Files Included

- `fxap_analyzer.py` - Main analysis tool
- `SECURITY_GUIDE.md` - Comprehensive security guide
- `examples/secure_license_system.lua` - Example implementation

## Understanding FXAP Encryption

### Structure

```
.fxap file:
+------------------+
| "FXAP" (4 bytes) |  Magic header
+------------------+
| Version (4 bytes)|  Format version
+------------------+
| Key data (rest)  |  XOR encryption key
+------------------+

Encrypted .lua file:
+------------------+
| "FXAP" (4 bytes) |  Magic header
+------------------+
| Version (4 bytes)|  Format version
+------------------+
| Encrypted data   |  XOR'd with key
+------------------+
```

### Decryption Algorithm

```python
# Extract key
key = fxap_file[8:]  # Skip header and version

# Decrypt file
decrypted = []
encrypted_content = encrypted_file[8:]  # Skip header

for i, byte in enumerate(encrypted_content):
    key_byte = key[i % len(key)]
    decrypted.append(byte ^ key_byte)
```

## Security Analysis Results

### Vulnerabilities Found

1. ⚠️ **Weak Encryption**: XOR cipher is easily reversible
2. ⚠️ **Plaintext Key**: Key stored unencrypted in `.fxap`
3. ⚠️ **No Authentication**: No HMAC or signature verification
4. ⚠️ **Known-Plaintext**: Vulnerable to cryptanalysis
5. ⚠️ **Key Reuse**: Same key for all files

### Risk Level: **HIGH**

FXAP provides minimal protection against determined attackers. It's meant as a basic deterrent, not serious security.

## Better Protection Methods

### 1. Server-Side Logic ⭐⭐⭐⭐⭐
Move critical code to server where clients can't access it.

**Effectiveness**: Very High
**Cost**: Free
**Difficulty**: Easy

### 2. Professional Obfuscation ⭐⭐⭐⭐
Use tools like Luraph or IronBrew to make code unreadable.

**Effectiveness**: High
**Cost**: $50-200
**Difficulty**: Easy

### 3. License Validation ⭐⭐⭐⭐
Verify legitimate ownership before allowing execution.

**Effectiveness**: High
**Cost**: Low (API hosting)
**Difficulty**: Medium

### 4. Native Modules ⭐⭐⭐⭐⭐
Compile critical parts to native code (C++).

**Effectiveness**: Very High
**Cost**: Free
**Difficulty**: Hard

### 5. Integrity Checking ⭐⭐⭐
Detect file modifications at runtime.

**Effectiveness**: Medium
**Cost**: Free
**Difficulty**: Easy

## Recommended Protection Stack

### Minimal (Free)
- Server-side validation
- Basic integrity checks
- Config encryption

### Standard ($50-200)
- Professional obfuscator
- License validation API
- Anti-debug techniques
- Server-side core logic

### Maximum (Custom)
- Native module compilation
- Hardware fingerprinting
- Multi-layer licensing
- Runtime memory protection
- Encrypted communication

## Example: Securing Your Resource

```lua
-- Instead of this (vulnerable):
RegisterCommand('giveweapon', function(source, args)
    GiveWeaponToPed(GetPlayerPed(source), args[1], 999, false, true)
end)

-- Do this (secure):
RegisterNetEvent('requestWeapon')
AddEventHandler('requestWeapon', function(weapon)
    local src = source

    -- Server-side validation
    if not IsPlayerAdmin(src) then
        DropPlayer(src, 'Unauthorized')
        return
    end

    if not IsValidWeapon(weapon) then
        DropPlayer(src, 'Invalid weapon')
        return
    end

    -- Log the action
    LogAction(src, 'gave_weapon', weapon)

    -- Give weapon
    GiveWeaponToPed(GetPlayerPed(src), weapon, 100, false, true)
end)
```

## Testing Your Protection

1. **Try to break it yourself**
   - Can you read the code?
   - Can you modify behavior?
   - Can you bypass license?

2. **Red team testing**
   - Give to trusted friend
   - Ask them to crack it
   - Fix weaknesses found

3. **Monitor in production**
   - Track license violations
   - Log suspicious activity
   - Update protection regularly

## Legal Considerations

- Copyright your code (automatic in most countries)
- Add license terms (EULA)
- Use DMCA for takedowns
- Consider legal action for serious violations

## Responsible Disclosure

If you find vulnerabilities in protection systems:

1. Contact the developer privately
2. Give reasonable time to fix (30-90 days)
3. Don't publish exploits
4. Consider bug bounties

## Disclaimer

This tool is for:
- ✅ Educational purposes
- ✅ Security research
- ✅ Protecting your own scripts
- ✅ Authorized testing

Not for:
- ❌ Breaking into others' scripts
- ❌ Pirating paid resources
- ❌ Violating licenses
- ❌ Illegal activity

**Use responsibly and ethically.**

## Resources

### Security Tools
- [Luraph](https://luraph.com) - Lua obfuscator
- [IronBrew](https://ironbrew.cc) - Lua obfuscator
- [FiveManage](https://fivemanage.com) - Asset management

### Learning
- [OWASP](https://owasp.org) - Web security
- [Cryptography Course](https://www.coursera.org/learn/crypto) - Understanding encryption
- [FiveM Docs](https://docs.fivem.net) - Server development

### Communities
- FiveM Discord - Technical help
- Reddit r/FiveM - General discussion
- CFX Forums - Development community

## Contributing

Found a better protection method? Submit a PR!

Improvements welcome:
- Additional analysis features
- More protection examples
- Better documentation
- Security best practices

## License

MIT License - See LICENSE file

---

**Remember**: Security through obscurity alone is not security. Use multiple layers!
