# Re-export metadata utilities for external consumption
import common.metadata as _meta

# Generates a Kubernetes-compliant resource name from id and suffix, keeping readability when truncated
# @param baseId The base identifier
# @param suffix The suffix to append to the base name
# @return A string containing the generated Kubernetes resource name
generateKubernetesResourceName = _meta._generateKubernetesResourceName
# Creates metadata for a Kubernetes resource with a composition resource name annotation
#
# @param id - The identifier of the resource
# @param kind - The kind of the resource (e.g. "virtualnetwork")
# @param suffix - The suffix to append to the resource name
# @return - A metadata object with appropriate annotations and name
metadata = _meta._metadata
