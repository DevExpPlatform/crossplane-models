"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema VPCDHCPOptions:
    r"""
    VPCDHCPOptions is the Schema for the VPCDHCPOptionss API. Provides a VPC DHCP Options resource.

    Attributes
    ----------
    apiVersion : str, default is "ec2.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "VPCDHCPOptions", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpec, default is Undefined, required
        spec
    status : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatus, default is Undefined, optional
        status
    """


    apiVersion: "ec2.aws.upbound.io/v1beta1" = "ec2.aws.upbound.io/v1beta1"

    kind: "VPCDHCPOptions" = "VPCDHCPOptions"

    metadata?: v1.ObjectMeta

    spec: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpec

    status?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatus


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpec:
    r"""
    VPCDHCPOptionsSpec defines the desired state of VPCDHCPOptions

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecForProvider, default is Undefined, required
        for provider
    initProvider : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecForProvider

    initProvider?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRef

    publishConnectionDetailsTo?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecWriteConnectionSecretToRef


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecForProvider:
    r"""
    ec2 aws upbound io v1beta1 v p c d h c p options spec for provider

    Attributes
    ----------
    domainName : str, default is Undefined, optional
        the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the search value in the /etc/resolv.conf file.
    domainNameServers : [str], default is Undefined, optional
        List of name servers to configure in /etc/resolv.conf. If you want to use the default AWS nameservers you should set this to AmazonProvidedDNS.
    ipv6AddressPreferredLeaseTime : str, default is Undefined, optional
        How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
    netbiosNameServers : [str], default is Undefined, optional
        List of NETBIOS name servers.
    netbiosNodeType : str, default is Undefined, optional
        The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see RFC 2132.
    ntpServers : [str], default is Undefined, optional
        List of NTP servers to configure.
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """


    domainName?: str

    domainNameServers?: [str]

    ipv6AddressPreferredLeaseTime?: str

    netbiosNameServers?: [str]

    netbiosNodeType?: str

    ntpServers?: [str]

    region: str

    tags?: {str:str}


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecInitProvider:
    r"""
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    domainName : str, default is Undefined, optional
        the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the search value in the /etc/resolv.conf file.
    domainNameServers : [str], default is Undefined, optional
        List of name servers to configure in /etc/resolv.conf. If you want to use the default AWS nameservers you should set this to AmazonProvidedDNS.
    ipv6AddressPreferredLeaseTime : str, default is Undefined, optional
        How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
    netbiosNameServers : [str], default is Undefined, optional
        List of NETBIOS name servers.
    netbiosNodeType : str, default is Undefined, optional
        The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see RFC 2132.
    ntpServers : [str], default is Undefined, optional
        List of NTP servers to configure.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """


    domainName?: str

    domainNameServers?: [str]

    ipv6AddressPreferredLeaseTime?: str

    netbiosNameServers?: [str]

    netbiosNodeType?: str

    ntpServers?: [str]

    tags?: {str:str}


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecProviderConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRef

    metadata?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToMetadata

    name: str


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecPublishConnectionDetailsToMetadata:
    r"""
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsSpecWriteConnectionSecretToRef:
    r"""
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatus:
    r"""
    VPCDHCPOptionsStatus defines the observed state of VPCDHCPOptions.

    Attributes
    ----------
    atProvider : Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusAtProvider

    conditions?: [Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusConditionsItems0]

    observedGeneration?: int


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusAtProvider:
    r"""
    ec2 aws upbound io v1beta1 v p c d h c p options status at provider

    Attributes
    ----------
    arn : str, default is Undefined, optional
        The ARN of the DHCP Options Set.
    domainName : str, default is Undefined, optional
        the suffix domain name to use by default when resolving non Fully Qualified Domain Names. In other words, this is what ends up being the search value in the /etc/resolv.conf file.
    domainNameServers : [str], default is Undefined, optional
        List of name servers to configure in /etc/resolv.conf. If you want to use the default AWS nameservers you should set this to AmazonProvidedDNS.
    id : str, default is Undefined, optional
        The ID of the DHCP Options Set.
    ipv6AddressPreferredLeaseTime : str, default is Undefined, optional
        How frequently, in seconds, a running instance with an IPv6 assigned to it goes through DHCPv6 lease renewal. Acceptable values are between 140 and 2147483647 (approximately 68 years). If no value is entered, the default lease time is 140 seconds. If you use long-term addressing for EC2 instances, you can increase the lease time and avoid frequent lease renewal requests. Lease renewal typically occurs when half of the lease time has elapsed.
    netbiosNameServers : [str], default is Undefined, optional
        List of NETBIOS name servers.
    netbiosNodeType : str, default is Undefined, optional
        The NetBIOS node type (1, 2, 4, or 8). AWS recommends to specify 2 since broadcast and multicast are not supported in their network. For more information about these node types, see RFC 2132.
    ntpServers : [str], default is Undefined, optional
        List of NTP servers to configure.
    ownerId : str, default is Undefined, optional
        The ID of the AWS account that owns the DHCP options set.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, default is Undefined, optional
        A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    """


    arn?: str

    domainName?: str

    domainNameServers?: [str]

    id?: str

    ipv6AddressPreferredLeaseTime?: str

    netbiosNameServers?: [str]

    netbiosNodeType?: str

    ntpServers?: [str]

    ownerId?: str

    tags?: {str:str}

    tagsAll?: {str:str}


schema Ec2AwsUpboundIoV1beta1VPCDHCPOptionsStatusConditionsItems0:
    r"""
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration represents the .metadata.generation that the condition was set based upon.
        For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
        with respect to the current state of the instance.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    observedGeneration?: int

    reason: str

    status: str

    $type: str


