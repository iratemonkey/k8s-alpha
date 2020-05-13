{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='v2beta1', url='', help=''),
  crossVersionObjectReference: (import 'crossVersionObjectReference.libsonnet'),
  externalMetricSource: (import 'externalMetricSource.libsonnet'),
  externalMetricStatus: (import 'externalMetricStatus.libsonnet'),
  horizontalPodAutoscaler: (import 'horizontalPodAutoscaler.libsonnet'),
  horizontalPodAutoscalerCondition: (import 'horizontalPodAutoscalerCondition.libsonnet'),
  horizontalPodAutoscalerSpec: (import 'horizontalPodAutoscalerSpec.libsonnet'),
  horizontalPodAutoscalerStatus: (import 'horizontalPodAutoscalerStatus.libsonnet'),
  metricSpec: (import 'metricSpec.libsonnet'),
  metricStatus: (import 'metricStatus.libsonnet'),
  objectMetricSource: (import 'objectMetricSource.libsonnet'),
  objectMetricStatus: (import 'objectMetricStatus.libsonnet'),
  podsMetricSource: (import 'podsMetricSource.libsonnet'),
  podsMetricStatus: (import 'podsMetricStatus.libsonnet'),
  resourceMetricSource: (import 'resourceMetricSource.libsonnet'),
  resourceMetricStatus: (import 'resourceMetricStatus.libsonnet')
}