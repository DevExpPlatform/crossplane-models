"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema VPCEndpointSecurityGroupAssociation:
    r"""
    VPCEndpointSecurityGroupAssociation is the Schema for the VPCEndpointSecurityGroupAssociations API. Provides a resource to create an association between a VPC endpoint and a security group.

    Attributes
    ----------
    apiVersion : str, default is "ec2.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "VPCEndpointSecurityGroupAssociation", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpec, default is Undefined, required
        spec
    status : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatus, default is Undefined, optional
        status
    """


    apiVersion: "ec2.aws.upbound.io/v1beta1" = "ec2.aws.upbound.io/v1beta1"

    kind: "VPCEndpointSecurityGroupAssociation" = "VPCEndpointSecurityGroupAssociation"

    metadata?: v1.ObjectMeta

    spec: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpec

    status?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatus


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpec:
    r"""
    VPCEndpointSecurityGroupAssociationSpec defines the desired state of VPCEndpointSecurityGroupAssociation

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
    forProvider : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProvider, default is Undefined, required
        for provider
    initProvider : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProvider

    initProvider?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRef

    publishConnectionDetailsTo?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecWriteConnectionSecretToRef


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProvider:
    r"""
    ec2 aws upbound io v1beta1 v p c endpoint security group association spec for provider

    Attributes
    ----------
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    replaceDefaultAssociation : bool, default is Undefined, optional
        Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with replace_default_association = true.
    securityGroupId : str, default is Undefined, optional
        The ID of the security group to be associated with the VPC endpoint.
    securityGroupIdRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRef, default is Undefined, optional
        security group Id ref
    securityGroupIdSelector : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelector, default is Undefined, optional
        security group Id selector
    vpcEndpointId : str, default is Undefined, optional
        The ID of the VPC endpoint with which the security group will be associated.
    vpcEndpointIdRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRef, default is Undefined, optional
        vpc endpoint Id ref
    vpcEndpointIdSelector : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelector, default is Undefined, optional
        vpc endpoint Id selector
    """


    region: str

    replaceDefaultAssociation?: bool

    securityGroupId?: str

    securityGroupIdRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRef

    securityGroupIdSelector?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelector

    vpcEndpointId?: str

    vpcEndpointIdRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRef

    vpcEndpointIdSelector?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelector


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRef:
    r"""
    Reference to a SecurityGroup in ec2 to populate securityGroupId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelector:
    r"""
    Selector for a SecurityGroup in ec2 to populate securityGroupId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderSecurityGroupIDSelectorPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRef:
    r"""
    Reference to a VPCEndpoint in ec2 to populate vpcEndpointId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelector:
    r"""
    Selector for a VPCEndpoint in ec2 to populate vpcEndpointId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecForProviderVpcEndpointIDSelectorPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProvider:
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
    replaceDefaultAssociation : bool, default is Undefined, optional
        Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with replace_default_association = true.
    securityGroupId : str, default is Undefined, optional
        The ID of the security group to be associated with the VPC endpoint.
    securityGroupIdRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRef, default is Undefined, optional
        security group Id ref
    securityGroupIdSelector : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelector, default is Undefined, optional
        security group Id selector
    vpcEndpointId : str, default is Undefined, optional
        The ID of the VPC endpoint with which the security group will be associated.
    vpcEndpointIdRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRef, default is Undefined, optional
        vpc endpoint Id ref
    vpcEndpointIdSelector : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelector, default is Undefined, optional
        vpc endpoint Id selector
    """


    replaceDefaultAssociation?: bool

    securityGroupId?: str

    securityGroupIdRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRef

    securityGroupIdSelector?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelector

    vpcEndpointId?: str

    vpcEndpointIdRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRef

    vpcEndpointIdSelector?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelector


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRef:
    r"""
    Reference to a SecurityGroup in ec2 to populate securityGroupId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelector:
    r"""
    Selector for a SecurityGroup in ec2 to populate securityGroupId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderSecurityGroupIDSelectorPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRef:
    r"""
    Reference to a VPCEndpoint in ec2 to populate vpcEndpointId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelector:
    r"""
    Selector for a VPCEndpoint in ec2 to populate vpcEndpointId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelectorPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecInitProviderVpcEndpointIDSelectorPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecProviderConfigRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRef

    metadata?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToMetadata

    name: str


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRefPolicy


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecPublishConnectionDetailsToMetadata:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationSpecWriteConnectionSecretToRef:
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


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatus:
    r"""
    VPCEndpointSecurityGroupAssociationStatus defines the observed state of VPCEndpointSecurityGroupAssociation.

    Attributes
    ----------
    atProvider : Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusAtProvider

    conditions?: [Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusConditionsItems0]

    observedGeneration?: int


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusAtProvider:
    r"""
    ec2 aws upbound io v1beta1 v p c endpoint security group association status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        The ID of the association.
    replaceDefaultAssociation : bool, default is Undefined, optional
        Whether this association should replace the association with the VPC's default security group that is created when no security groups are specified during VPC endpoint creation. At most 1 association per-VPC endpoint should be configured with replace_default_association = true.
    securityGroupId : str, default is Undefined, optional
        The ID of the security group to be associated with the VPC endpoint.
    vpcEndpointId : str, default is Undefined, optional
        The ID of the VPC endpoint with which the security group will be associated.
    """


    id?: str

    replaceDefaultAssociation?: bool

    securityGroupId?: str

    vpcEndpointId?: str


schema Ec2AwsUpboundIoV1beta1VPCEndpointSecurityGroupAssociationStatusConditionsItems0:
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


