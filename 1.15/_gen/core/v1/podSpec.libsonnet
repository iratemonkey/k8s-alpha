{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='podSpec', url='', help='PodSpec is a description of a pod.'),
  '#affinity': d.obj(help='Affinity is a group of affinity scheduling rules.'),
  affinity: {
    '#nodeAffinity': d.obj(help='Node affinity is a group of node affinity scheduling rules.'),
    nodeAffinity: {
      '#requiredDuringSchedulingIgnoredDuringExecution': d.obj(help='A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.'),
      requiredDuringSchedulingIgnoredDuringExecution: {
        '#withNodeSelectorTerms': d.fn(help='Required. A list of node selector terms. The terms are ORed.', args=[d.arg(name='nodeSelectorTerms', type=d.T.array)]),
        withNodeSelectorTerms(nodeSelectorTerms): { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } },
        '#withNodeSelectorTermsMixin': d.fn(help='Required. A list of node selector terms. The terms are ORed.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='nodeSelectorTerms', type=d.T.array)]),
        withNodeSelectorTermsMixin(nodeSelectorTerms): { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } }
      },
      '#withPreferredDuringSchedulingIgnoredDuringExecution': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      '#withPreferredDuringSchedulingIgnoredDuringExecutionMixin': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } }
    },
    '#podAffinity': d.obj(help='Pod affinity is a group of inter pod affinity scheduling rules.'),
    podAffinity: {
      '#withPreferredDuringSchedulingIgnoredDuringExecution': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      '#withPreferredDuringSchedulingIgnoredDuringExecutionMixin': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      '#withRequiredDuringSchedulingIgnoredDuringExecution': d.fn(help='If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.', args=[d.arg(name='requiredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } },
      '#withRequiredDuringSchedulingIgnoredDuringExecutionMixin': d.fn(help='If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='requiredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } }
    },
    '#podAntiAffinity': d.obj(help='Pod anti affinity is a group of inter pod anti affinity scheduling rules.'),
    podAntiAffinity: {
      '#withPreferredDuringSchedulingIgnoredDuringExecution': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      '#withPreferredDuringSchedulingIgnoredDuringExecutionMixin': d.fn(help='The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='preferredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } },
      '#withRequiredDuringSchedulingIgnoredDuringExecution': d.fn(help='If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.', args=[d.arg(name='requiredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } },
      '#withRequiredDuringSchedulingIgnoredDuringExecutionMixin': d.fn(help='If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='requiredDuringSchedulingIgnoredDuringExecution', type=d.T.array)]),
      withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } }
    }
  },
  '#dnsConfig': d.obj(help='PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.'),
  dnsConfig: {
    '#withNameservers': d.fn(help='A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.', args=[d.arg(name='nameservers', type=d.T.array)]),
    withNameservers(nameservers): { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } },
    '#withNameserversMixin': d.fn(help='A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='nameservers', type=d.T.array)]),
    withNameserversMixin(nameservers): { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } },
    '#withOptions': d.fn(help='A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.', args=[d.arg(name='options', type=d.T.array)]),
    withOptions(options): { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } },
    '#withOptionsMixin': d.fn(help='A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='options', type=d.T.array)]),
    withOptionsMixin(options): { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } },
    '#withSearches': d.fn(help='A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.', args=[d.arg(name='searches', type=d.T.array)]),
    withSearches(searches): { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } },
    '#withSearchesMixin': d.fn(help='A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='searches', type=d.T.array)]),
    withSearchesMixin(searches): { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } }
  },
  '#securityContext': d.obj(help='PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.'),
  securityContext: {
    '#seLinuxOptions': d.obj(help='SELinuxOptions are the labels to be applied to the container'),
    seLinuxOptions: {
      '#withLevel': d.fn(help='Level is SELinux level label that applies to the container.', args=[d.arg(name='level', type=d.T.string)]),
      withLevel(level): { securityContext+: { seLinuxOptions+: { level: level } } },
      '#withRole': d.fn(help='Role is a SELinux role label that applies to the container.', args=[d.arg(name='role', type=d.T.string)]),
      withRole(role): { securityContext+: { seLinuxOptions+: { role: role } } },
      '#withType': d.fn(help='Type is a SELinux type label that applies to the container.', args=[d.arg(name='type', type=d.T.string)]),
      withType(type): { securityContext+: { seLinuxOptions+: { type: type } } },
      '#withUser': d.fn(help='User is a SELinux user label that applies to the container.', args=[d.arg(name='user', type=d.T.string)]),
      withUser(user): { securityContext+: { seLinuxOptions+: { user: user } } }
    },
    '#windowsOptions': d.obj(help='WindowsSecurityContextOptions contain Windows-specific options and credentials.'),
    windowsOptions: {
      '#withGmsaCredentialSpec': d.fn(help='GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.', args=[d.arg(name='gmsaCredentialSpec', type=d.T.string)]),
      withGmsaCredentialSpec(gmsaCredentialSpec): { securityContext+: { windowsOptions+: { gmsaCredentialSpec: gmsaCredentialSpec } } },
      '#withGmsaCredentialSpecName': d.fn(help='GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.', args=[d.arg(name='gmsaCredentialSpecName', type=d.T.string)]),
      withGmsaCredentialSpecName(gmsaCredentialSpecName): { securityContext+: { windowsOptions+: { gmsaCredentialSpecName: gmsaCredentialSpecName } } }
    },
    '#withFsGroup': d.fn(help="A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:\n\n1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----\n\nIf unset, the Kubelet will not modify the ownership and permissions of any volume.", args=[d.arg(name='fsGroup', type=d.T.integer)]),
    withFsGroup(fsGroup): { securityContext+: { fsGroup: fsGroup } },
    '#withRunAsGroup': d.fn(help='The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.', args=[d.arg(name='runAsGroup', type=d.T.integer)]),
    withRunAsGroup(runAsGroup): { securityContext+: { runAsGroup: runAsGroup } },
    '#withRunAsNonRoot': d.fn(help='Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.', args=[d.arg(name='runAsNonRoot', type=d.T.boolean)]),
    withRunAsNonRoot(runAsNonRoot): { securityContext+: { runAsNonRoot: runAsNonRoot } },
    '#withRunAsUser': d.fn(help='The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.', args=[d.arg(name='runAsUser', type=d.T.integer)]),
    withRunAsUser(runAsUser): { securityContext+: { runAsUser: runAsUser } },
    '#withSupplementalGroups': d.fn(help="A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.", args=[d.arg(name='supplementalGroups', type=d.T.array)]),
    withSupplementalGroups(supplementalGroups): { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } },
    '#withSupplementalGroupsMixin': d.fn(help="A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='supplementalGroups', type=d.T.array)]),
    withSupplementalGroupsMixin(supplementalGroups): { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } },
    '#withSysctls': d.fn(help='Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.', args=[d.arg(name='sysctls', type=d.T.array)]),
    withSysctls(sysctls): { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } },
    '#withSysctlsMixin': d.fn(help='Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='sysctls', type=d.T.array)]),
    withSysctlsMixin(sysctls): { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } }
  },
  '#withActiveDeadlineSeconds': d.fn(help='Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.', args=[d.arg(name='activeDeadlineSeconds', type=d.T.integer)]),
  withActiveDeadlineSeconds(activeDeadlineSeconds): { activeDeadlineSeconds: activeDeadlineSeconds },
  '#withAutomountServiceAccountToken': d.fn(help='AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.', args=[d.arg(name='automountServiceAccountToken', type=d.T.boolean)]),
  withAutomountServiceAccountToken(automountServiceAccountToken): { automountServiceAccountToken: automountServiceAccountToken },
  '#withContainers': d.fn(help='List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.', args=[d.arg(name='containers', type=d.T.array)]),
  withContainers(containers): { containers: if std.isArray(v=containers) then containers else [containers] },
  '#withContainersMixin': d.fn(help='List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='containers', type=d.T.array)]),
  withContainersMixin(containers): { containers+: if std.isArray(v=containers) then containers else [containers] },
  '#withDnsPolicy': d.fn(help="Set DNS policy for the pod. Defaults to 'ClusterFirst'. Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.", args=[d.arg(name='dnsPolicy', type=d.T.string)]),
  withDnsPolicy(dnsPolicy): { dnsPolicy: dnsPolicy },
  '#withEnableServiceLinks': d.fn(help="EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.", args=[d.arg(name='enableServiceLinks', type=d.T.boolean)]),
  withEnableServiceLinks(enableServiceLinks): { enableServiceLinks: enableServiceLinks },
  '#withHostAliases': d.fn(help="HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.", args=[d.arg(name='hostAliases', type=d.T.array)]),
  withHostAliases(hostAliases): { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] },
  '#withHostAliasesMixin': d.fn(help="HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='hostAliases', type=d.T.array)]),
  withHostAliasesMixin(hostAliases): { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] },
  '#withHostIPC': d.fn(help="Use the host's ipc namespace. Optional: Default to false.", args=[d.arg(name='hostIPC', type=d.T.boolean)]),
  withHostIPC(hostIPC): { hostIPC: hostIPC },
  '#withHostNetwork': d.fn(help="Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.", args=[d.arg(name='hostNetwork', type=d.T.boolean)]),
  withHostNetwork(hostNetwork): { hostNetwork: hostNetwork },
  '#withHostPID': d.fn(help="Use the host's pid namespace. Optional: Default to false.", args=[d.arg(name='hostPID', type=d.T.boolean)]),
  withHostPID(hostPID): { hostPID: hostPID },
  '#withHostname': d.fn(help="Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.", args=[d.arg(name='hostname', type=d.T.string)]),
  withHostname(hostname): { hostname: hostname },
  '#withImagePullSecrets': d.fn(help='ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod', args=[d.arg(name='imagePullSecrets', type=d.T.array)]),
  withImagePullSecrets(imagePullSecrets): { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  '#withImagePullSecretsMixin': d.fn(help='ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='imagePullSecrets', type=d.T.array)]),
  withImagePullSecretsMixin(imagePullSecrets): { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] },
  '#withInitContainers': d.fn(help='List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/', args=[d.arg(name='initContainers', type=d.T.array)]),
  withInitContainers(initContainers): { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] },
  '#withInitContainersMixin': d.fn(help='List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='initContainers', type=d.T.array)]),
  withInitContainersMixin(initContainers): { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] },
  '#withNodeName': d.fn(help='NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.', args=[d.arg(name='nodeName', type=d.T.string)]),
  withNodeName(nodeName): { nodeName: nodeName },
  '#withNodeSelector': d.fn(help="NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/", args=[d.arg(name='nodeSelector', type=d.T.object)]),
  withNodeSelector(nodeSelector): { nodeSelector: nodeSelector },
  '#withNodeSelectorMixin': d.fn(help="NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='nodeSelector', type=d.T.object)]),
  withNodeSelectorMixin(nodeSelector): { nodeSelector+: nodeSelector },
  '#withPreemptionPolicy': d.fn(help='PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.', args=[d.arg(name='preemptionPolicy', type=d.T.string)]),
  withPreemptionPolicy(preemptionPolicy): { preemptionPolicy: preemptionPolicy },
  '#withPriority': d.fn(help='The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.', args=[d.arg(name='priority', type=d.T.integer)]),
  withPriority(priority): { priority: priority },
  '#withPriorityClassName': d.fn(help="If specified, indicates the pod's priority. 'system-node-critical' and 'system-cluster-critical' are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.", args=[d.arg(name='priorityClassName', type=d.T.string)]),
  withPriorityClassName(priorityClassName): { priorityClassName: priorityClassName },
  '#withReadinessGates': d.fn(help='If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md', args=[d.arg(name='readinessGates', type=d.T.array)]),
  withReadinessGates(readinessGates): { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] },
  '#withReadinessGatesMixin': d.fn(help='If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/0007-pod-ready%2B%2B.md\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='readinessGates', type=d.T.array)]),
  withReadinessGatesMixin(readinessGates): { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] },
  '#withRestartPolicy': d.fn(help='Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy', args=[d.arg(name='restartPolicy', type=d.T.string)]),
  withRestartPolicy(restartPolicy): { restartPolicy: restartPolicy },
  '#withRuntimeClassName': d.fn(help='RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md This is a beta feature as of Kubernetes v1.14.', args=[d.arg(name='runtimeClassName', type=d.T.string)]),
  withRuntimeClassName(runtimeClassName): { runtimeClassName: runtimeClassName },
  '#withSchedulerName': d.fn(help='If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.', args=[d.arg(name='schedulerName', type=d.T.string)]),
  withSchedulerName(schedulerName): { schedulerName: schedulerName },
  '#withServiceAccount': d.fn(help='DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.', args=[d.arg(name='serviceAccount', type=d.T.string)]),
  withServiceAccount(serviceAccount): { serviceAccount: serviceAccount },
  '#withServiceAccountName': d.fn(help='ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/', args=[d.arg(name='serviceAccountName', type=d.T.string)]),
  withServiceAccountName(serviceAccountName): { serviceAccountName: serviceAccountName },
  '#withShareProcessNamespace': d.fn(help='Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false. This field is beta-level and may be disabled with the PodShareProcessNamespace feature.', args=[d.arg(name='shareProcessNamespace', type=d.T.boolean)]),
  withShareProcessNamespace(shareProcessNamespace): { shareProcessNamespace: shareProcessNamespace },
  '#withSubdomain': d.fn(help='If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.', args=[d.arg(name='subdomain', type=d.T.string)]),
  withSubdomain(subdomain): { subdomain: subdomain },
  '#withTerminationGracePeriodSeconds': d.fn(help='Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.', args=[d.arg(name='terminationGracePeriodSeconds', type=d.T.integer)]),
  withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { terminationGracePeriodSeconds: terminationGracePeriodSeconds },
  '#withTolerations': d.fn(help="If specified, the pod's tolerations.", args=[d.arg(name='tolerations', type=d.T.array)]),
  withTolerations(tolerations): { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  '#withTolerationsMixin': d.fn(help="If specified, the pod's tolerations.\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='tolerations', type=d.T.array)]),
  withTolerationsMixin(tolerations): { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] },
  '#withVolumes': d.fn(help='List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes', args=[d.arg(name='volumes', type=d.T.array)]),
  withVolumes(volumes): { volumes: if std.isArray(v=volumes) then volumes else [volumes] },
  '#withVolumesMixin': d.fn(help='List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='volumes', type=d.T.array)]),
  withVolumesMixin(volumes): { volumes+: if std.isArray(v=volumes) then volumes else [volumes] },
  '#mixin': 'ignore',
  mixin: self
}