import crypto

# Generates a Kubernetes-compliant resource name from id and suffix, keeping readability when truncated
# @param baseId The base identifier
# @param suffix The suffix to append to the base name
# @return A string containing the generated Kubernetes resource name
_generateKubernetesResourceName = lambda baseId: str, suffix: str -> str {
    _baseName = ""
    if suffix == "":
        _baseName = baseId
    else:
        _baseName = baseId + "-" + suffix
    # If name exceeds 63 characters, truncate and add hash for uniqueness
    if len(_baseName) > 63:
        # Keep first 30 characters of original name + "-" + 32 chars MD5 hash = 63 total
        _truncatedName = _baseName[:30:]
        _hashSuffix = crypto.md5(_baseName)
        _baseName = _truncatedName + "-" + _hashSuffix

    _baseName
}
# Creates metadata for a Kubernetes resource with a composition resource name annotation
#
# @param id - The identifier of the resource
# @param kind - The kind of the resource (e.g. "virtualnetwork")
# @param suffix - The suffix to append to the resource name
# @return - A metadata object with appropriate annotations and name
_metadata = lambda id: str, kind: str, suffix: str -> any {
    {
        annotations = {
            if suffix == "":
                "krm.kcl.dev/composition-resource-name" = id + "-" + kind
            else:
                # Use the suffix to create a unique name for the resource
                # This is useful for resources that are created multiple times
                # with different suffixes (e.g. subnets)
                # The suffix is used to differentiate between different resources
                "krm.kcl.dev/composition-resource-name" = id + "-" + kind + "-" + suffix
        }
        name = _generateKubernetesResourceName(id, suffix)
    }
}
