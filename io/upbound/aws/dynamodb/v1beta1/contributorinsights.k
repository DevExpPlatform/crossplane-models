"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema ContributorInsights:
    r"""
    ContributorInsights is the Schema for the ContributorInsightss API. Provides a DynamoDB contributor insights resource

    Attributes
    ----------
    apiVersion : str, default is "dynamodb.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "ContributorInsights", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpec, default is Undefined, required
        spec
    status : DynamodbAwsUpboundIoV1beta1ContributorInsightsStatus, default is Undefined, optional
        status
    """


    apiVersion: "dynamodb.aws.upbound.io/v1beta1" = "dynamodb.aws.upbound.io/v1beta1"

    kind: "ContributorInsights" = "ContributorInsights"

    metadata?: v1.ObjectMeta

    spec: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpec

    status?: DynamodbAwsUpboundIoV1beta1ContributorInsightsStatus


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpec:
    r"""
    ContributorInsightsSpec defines the desired state of ContributorInsights

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
    forProvider : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProvider, default is Undefined, required
        for provider
    initProvider : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProvider

    initProvider?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRef

    publishConnectionDetailsTo?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecWriteConnectionSecretToRef


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProvider:
    r"""
    dynamodb aws upbound io v1beta1 contributor insights spec for provider

    Attributes
    ----------
    indexName : str, default is Undefined, optional
        The global secondary index name
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    tableName : str, default is Undefined, optional
        The name of the table to enable contributor insights
    tableNameRef : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRef, default is Undefined, optional
        table name ref
    tableNameSelector : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelector, default is Undefined, optional
        table name selector
    """


    indexName?: str

    region: str

    tableName?: str

    tableNameRef?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRef

    tableNameSelector?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelector


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRef:
    r"""
    Reference to a Table in dynamodb to populate tableName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRefPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameRefPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelector:
    r"""
    Selector for a Table in dynamodb to populate tableName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelectorPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecForProviderTableNameSelectorPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProvider:
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
    indexName : str, default is Undefined, optional
        The global secondary index name
    tableName : str, default is Undefined, optional
        The name of the table to enable contributor insights
    tableNameRef : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRef, default is Undefined, optional
        table name ref
    tableNameSelector : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelector, default is Undefined, optional
        table name selector
    """


    indexName?: str

    tableName?: str

    tableNameRef?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRef

    tableNameSelector?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelector


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRef:
    r"""
    Reference to a Table in dynamodb to populate tableName.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRefPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameRefPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelector:
    r"""
    Selector for a Table in dynamodb to populate tableName.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelectorPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecInitProviderTableNameSelectorPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRefPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecProviderConfigRefPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRef

    metadata?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToMetadata

    name: str


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRefPolicy


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecPublishConnectionDetailsToMetadata:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsSpecWriteConnectionSecretToRef:
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


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsStatus:
    r"""
    ContributorInsightsStatus defines the observed state of ContributorInsights.

    Attributes
    ----------
    atProvider : DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the latest metadata.generation
        which resulted in either a ready state, or stalled due to error
        it can not recover from without human intervention.
    """


    atProvider?: DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusAtProvider

    conditions?: [DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusConditionsItems0]

    observedGeneration?: int


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusAtProvider:
    r"""
    dynamodb aws upbound io v1beta1 contributor insights status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        id
    indexName : str, default is Undefined, optional
        The global secondary index name
    tableName : str, default is Undefined, optional
        The name of the table to enable contributor insights
    """


    id?: str

    indexName?: str

    tableName?: str


schema DynamodbAwsUpboundIoV1beta1ContributorInsightsStatusConditionsItems0:
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


