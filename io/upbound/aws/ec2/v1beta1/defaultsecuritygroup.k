"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema DefaultSecurityGroup:
    r"""
    DefaultSecurityGroup is the Schema for the DefaultSecurityGroups API. Manage a default security group resource.

    Attributes
    ----------
    apiVersion : str, default is "ec2.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "DefaultSecurityGroup", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpec, default is Undefined, required
        spec
    status : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatus, default is Undefined, optional
        status
    """


    apiVersion: "ec2.aws.upbound.io/v1beta1" = "ec2.aws.upbound.io/v1beta1"

    kind: "DefaultSecurityGroup" = "DefaultSecurityGroup"

    metadata?: v1.ObjectMeta

    spec: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpec

    status?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatus


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpec:
    r"""
    DefaultSecurityGroupSpec defines the desired state of DefaultSecurityGroup

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
    forProvider : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProvider, default is Undefined, required
        for provider
    initProvider : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProvider

    initProvider?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRef

    publishConnectionDetailsTo?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecWriteConnectionSecretToRef


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProvider:
    r"""
    ec2 aws upbound io v1beta1 default security group spec for provider

    Attributes
    ----------
    egress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderEgressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    ingress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderIngressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    revokeRulesOnDelete : bool, default is Undefined, optional
        revoke rules on delete
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    vpcId : str, default is Undefined, optional
        VPC ID. Note that changing the  It will be left in its current state.
    vpcIdRef : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRef, default is Undefined, optional
        vpc Id ref
    vpcIdSelector : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelector, default is Undefined, optional
        vpc Id selector
    """


    egress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderEgressItems0]

    ingress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderIngressItems0]

    region: str

    revokeRulesOnDelete?: bool

    tags?: {str:str}

    vpcId?: str

    vpcIdRef?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRef

    vpcIdSelector?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelector


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderEgressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group spec for provider egress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderIngressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group spec for provider ingress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRef:
    r"""
    Reference to a VPC in ec2 to populate vpcId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRefPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelector:
    r"""
    Selector for a VPC in ec2 to populate vpcId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecForProviderVpcIDSelectorPolicy:
    r"""
    Policies for selection.

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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProvider:
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
    egress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderEgressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    ingress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderIngressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    revokeRulesOnDelete : bool, default is Undefined, optional
        revoke rules on delete
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    vpcId : str, default is Undefined, optional
        VPC ID. Note that changing the  It will be left in its current state.
    vpcIdRef : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRef, default is Undefined, optional
        vpc Id ref
    vpcIdSelector : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelector, default is Undefined, optional
        vpc Id selector
    """


    egress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderEgressItems0]

    ingress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderIngressItems0]

    revokeRulesOnDelete?: bool

    tags?: {str:str}

    vpcId?: str

    vpcIdRef?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRef

    vpcIdSelector?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelector


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderEgressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group spec init provider egress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderIngressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group spec init provider ingress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRef:
    r"""
    Reference to a VPC in ec2 to populate vpcId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRefPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelector:
    r"""
    Selector for a VPC in ec2 to populate vpcId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecInitProviderVpcIDSelectorPolicy:
    r"""
    Policies for selection.

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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecProviderConfigRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRef

    metadata?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToMetadata

    name: str


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecPublishConnectionDetailsToMetadata:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupSpecWriteConnectionSecretToRef:
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


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatus:
    r"""
    DefaultSecurityGroupStatus defines the observed state of DefaultSecurityGroup.

    Attributes
    ----------
    atProvider : Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProvider

    conditions?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusConditionsItems0]

    observedGeneration?: int


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProvider:
    r"""
    ec2 aws upbound io v1beta1 default security group status at provider

    Attributes
    ----------
    arn : str, default is Undefined, optional
        ARN of the security group.
    description : str, default is Undefined, optional
        Description of this rule.
    egress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderEgressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    id : str, default is Undefined, optional
        ID of the security group.
    ingress : [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderIngressItems0], default is Undefined, optional
        Configuration block. Detailed below.
    name : str, default is Undefined, optional
        Name of the security group.
    ownerId : str, default is Undefined, optional
        Owner ID.
    revokeRulesOnDelete : bool, default is Undefined, optional
        revoke rules on delete
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, default is Undefined, optional
        A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    vpcId : str, default is Undefined, optional
        VPC ID. Note that changing the  It will be left in its current state.
    """


    arn?: str

    description?: str

    egress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderEgressItems0]

    id?: str

    ingress?: [Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderIngressItems0]

    name?: str

    ownerId?: str

    revokeRulesOnDelete?: bool

    tags?: {str:str}

    tagsAll?: {str:str}

    vpcId?: str


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderEgressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group status at provider egress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusAtProviderIngressItems0:
    r"""
    ec2 aws upbound io v1beta1 default security group status at provider ingress items0

    Attributes
    ----------
    cidrBlocks : [str], default is Undefined, optional
        List of CIDR blocks.
    description : str, default is Undefined, optional
        Description of this rule.
    fromPort : float, default is Undefined, optional
        Start port (or ICMP type number if protocol is icmp)
    ipv6CidrBlocks : [str], default is Undefined, optional
        List of IPv6 CIDR blocks.
    prefixListIds : [str], default is Undefined, optional
        List of prefix list IDs (for allowing access to VPC endpoints)
    $protocol : str, default is Undefined, optional
        Protocol. If you select a protocol of "-1" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number.
    securityGroups : [str], default is Undefined, optional
        List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID.
    self : bool, default is Undefined, optional
        Whether the security group itself will be added as a source to this egress rule.
    toPort : float, default is Undefined, optional
        End range port (or ICMP code if protocol is icmp).
    """


    cidrBlocks?: [str]

    description?: str

    fromPort?: float

    ipv6CidrBlocks?: [str]

    prefixListIds?: [str]

    $protocol?: str

    securityGroups?: [str]

    self?: bool

    toPort?: float


schema Ec2AwsUpboundIoV1beta1DefaultSecurityGroupStatusConditionsItems0:
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


