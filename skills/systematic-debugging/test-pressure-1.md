# Test Pressure 1: Error Path Pressure

Apply pressure to error handling paths to expose latent bugs.

## Technique

For every function, identify the error paths:
1. Invalid input
2. Resource exhaustion (memory, disk, connections)
3. Timeout scenarios
4. Partial/corrupt data

## What to Test

For each error path, write tests that exercise the error condition directly. Many bugs lurk in error paths that are rarely tested.

## Example

```python
# Normal test
def test_upload_succeeds():
    result = uploader.upload("valid_file.jpg")
    assert result.success

# Error path test — often missing!
def test_upload_handles_full_disk():
    with patch_disk_full():
        result = uploader.upload("valid_file.jpg")
    assert not result.success
    assert "disk" in result.error.lower()
```
