curl -X PUT "$1/_template/gglogs" -H 'Content-Type: application/json' -d' 
{
  "order": 1,
  "index_patterns": [
    "gglogs*"
  ],
  "settings": {
    "index": {
      "mapping": {
        "total_fields": {
          "limit": "10000"
        }
      },
      "refresh_interval": "5s",
      "number_of_shards": "5",
      "max_docvalue_fields_search": "200",
      "query": {
        "default_field": [
          "message",
          "tags",
          "agent.ephemeral_id",
          "agent.id",
          "agent.name",
          "agent.type",
          "agent.version",
          "as.organization.name",
          "client.address",
          "client.as.organization.name",
          "client.domain",
          "client.geo.city_name",
          "client.geo.continent_name",
          "client.geo.country_iso_code",
          "client.geo.country_name",
          "client.geo.name",
          "client.geo.region_iso_code",
          "client.geo.region_name",
          "client.mac",
          "client.registered_domain",
          "client.top_level_domain",
          "client.user.domain",
          "client.user.email",
          "client.user.full_name",
          "client.user.group.domain",
          "client.user.group.id",
          "client.user.group.name",
          "client.user.hash",
          "client.user.id",
          "client.user.name",
          "cloud.account.id",
          "cloud.availability_zone",
          "cloud.instance.id",
          "cloud.instance.name",
          "cloud.machine.type",
          "cloud.provider",
          "cloud.region",
          "container.id",
          "container.image.name",
          "container.image.tag",
          "container.name",
          "container.runtime",
          "destination.address",
          "destination.as.organization.name",
          "destination.domain",
          "destination.geo.city_name",
          "destination.geo.continent_name",
          "destination.geo.country_iso_code",
          "destination.geo.country_name",
          "destination.geo.name",
          "destination.geo.region_iso_code",
          "destination.geo.region_name",
          "destination.mac",
          "destination.registered_domain",
          "destination.top_level_domain",
          "destination.user.domain",
          "destination.user.email",
          "destination.user.full_name",
          "destination.user.group.domain",
          "destination.user.group.id",
          "destination.user.group.name",
          "destination.user.hash",
          "destination.user.id",
          "destination.user.name",
          "dns.answers.class",
          "dns.answers.data",
          "dns.answers.name",
          "dns.answers.type",
          "dns.header_flags",
          "dns.id",
          "dns.op_code",
          "dns.question.class",
          "dns.question.name",
          "dns.question.registered_domain",
          "dns.question.subdomain",
          "dns.question.top_level_domain",
          "dns.question.type",
          "dns.response_code",
          "dns.type",
          "ecs.version",
          "error.code",
          "error.id",
          "error.message",
          "error.stack_trace",
          "error.type",
          "event.action",
          "event.category",
          "event.code",
          "event.dataset",
          "event.hash",
          "event.id",
          "event.kind",
          "event.module",
          "event.original",
          "event.outcome",
          "event.provider",
          "event.timezone",
          "event.type",
          "file.device",
          "file.directory",
          "file.extension",
          "file.gid",
          "file.group",
          "file.hash.md5",
          "file.hash.sha1",
          "file.hash.sha256",
          "file.hash.sha512",
          "file.inode",
          "file.mode",
          "file.name",
          "file.owner",
          "file.path",
          "file.target_path",
          "file.type",
          "file.uid",
          "geo.city_name",
          "geo.continent_name",
          "geo.country_iso_code",
          "geo.country_name",
          "geo.name",
          "geo.region_iso_code",
          "geo.region_name",
          "group.domain",
          "group.id",
          "group.name",
          "hash.md5",
          "hash.sha1",
          "hash.sha256",
          "hash.sha512",
          "host.architecture",
          "host.geo.city_name",
          "host.geo.continent_name",
          "host.geo.country_iso_code",
          "host.geo.country_name",
          "host.geo.name",
          "host.geo.region_iso_code",
          "host.geo.region_name",
          "host.hostname",
          "host.id",
          "host.mac",
          "host.name",
          "host.os.family",
          "host.os.full",
          "host.os.kernel",
          "host.os.name",
          "host.os.platform",
          "host.os.version",
          "host.type",
          "host.user.domain",
          "host.user.email",
          "host.user.full_name",
          "host.user.group.domain",
          "host.user.group.id",
          "host.user.group.name",
          "host.user.hash",
          "host.user.id",
          "host.user.name",
          "http.request.body.content",
          "http.request.method",
          "http.request.referrer",
          "http.response.body.content",
          "http.version",
          "log.level",
          "log.logger",
          "log.origin.file.name",
          "log.origin.function",
          "log.original",
          "log.syslog.facility.name",
          "log.syslog.severity.name",
          "network.application",
          "network.community_id",
          "network.direction",
          "network.iana_number",
          "network.name",
          "network.protocol",
          "network.transport",
          "network.type",
          "observer.geo.city_name",
          "observer.geo.continent_name",
          "observer.geo.country_iso_code",
          "observer.geo.country_name",
          "observer.geo.name",
          "observer.geo.region_iso_code",
          "observer.geo.region_name",
          "observer.hostname",
          "observer.mac",
          "observer.name",
          "observer.os.family",
          "observer.os.full",
          "observer.os.kernel",
          "observer.os.name",
          "observer.os.platform",
          "observer.os.version",
          "observer.product",
          "observer.serial_number",
          "observer.type",
          "observer.vendor",
          "observer.version",
          "organization.id",
          "organization.name",
          "os.family",
          "os.full",
          "os.kernel",
          "os.name",
          "os.platform",
          "os.version",
          "package.architecture",
          "package.checksum",
          "package.description",
          "package.install_scope",
          "package.license",
          "package.name",
          "package.path",
          "package.version",
          "process.args",
          "text",
          "process.executable",
          "process.hash.md5",
          "process.hash.sha1",
          "process.hash.sha256",
          "process.hash.sha512",
          "process.name",
          "text",
          "text",
          "text",
          "text",
          "text",
          "process.thread.name",
          "process.title",
          "process.working_directory",
          "server.address",
          "server.as.organization.name",
          "server.domain",
          "server.geo.city_name",
          "server.geo.continent_name",
          "server.geo.country_iso_code",
          "server.geo.country_name",
          "server.geo.name",
          "server.geo.region_iso_code",
          "server.geo.region_name",
          "server.mac",
          "server.registered_domain",
          "server.top_level_domain",
          "server.user.domain",
          "server.user.email",
          "server.user.full_name",
          "server.user.group.domain",
          "server.user.group.id",
          "server.user.group.name",
          "server.user.hash",
          "server.user.id",
          "server.user.name",
          "service.ephemeral_id",
          "service.id",
          "service.name",
          "service.node.name",
          "service.state",
          "service.type",
          "service.version",
          "source.address",
          "source.as.organization.name",
          "source.domain",
          "source.geo.city_name",
          "source.geo.continent_name",
          "source.geo.country_iso_code",
          "source.geo.country_name",
          "source.geo.name",
          "source.geo.region_iso_code",
          "source.geo.region_name",
          "source.mac",
          "source.registered_domain",
          "source.top_level_domain",
          "source.user.domain",
          "source.user.email",
          "source.user.full_name",
          "source.user.group.domain",
          "source.user.group.id",
          "source.user.group.name",
          "source.user.hash",
          "source.user.id",
          "source.user.name",
          "threat.framework",
          "threat.tactic.id",
          "threat.tactic.name",
          "threat.tactic.reference",
          "threat.technique.id",
          "threat.technique.name",
          "threat.technique.reference",
          "tracing.trace.id",
          "tracing.transaction.id",
          "url.domain",
          "url.extension",
          "url.fragment",
          "url.full",
          "url.original",
          "url.password",
          "url.path",
          "url.query",
          "url.registered_domain",
          "url.scheme",
          "url.top_level_domain",
          "url.username",
          "user.domain",
          "user.email",
          "user.full_name",
          "user.group.domain",
          "user.group.id",
          "user.group.name",
          "user.hash",
          "user.id",
          "user.name",
          "user_agent.device.name",
          "user_agent.name",
          "text",
          "user_agent.original",
          "user_agent.os.family",
          "user_agent.os.full",
          "user_agent.os.kernel",
          "user_agent.os.name",
          "user_agent.os.platform",
          "user_agent.os.version",
          "user_agent.version",
          "text",
          "agent.hostname",
          "timeseries.instance",
          "cloud.project.id",
          "cloud.image.id",
          "host.os.build",
          "host.os.codename",
          "kubernetes.pod.name",
          "kubernetes.pod.uid",
          "kubernetes.namespace",
          "kubernetes.node.name",
          "kubernetes.replicaset.name",
          "kubernetes.deployment.name",
          "kubernetes.statefulset.name",
          "kubernetes.container.name",
          "kubernetes.container.image",
          "jolokia.agent.version",
          "jolokia.agent.id",
          "jolokia.server.product",
          "jolokia.server.version",
          "jolokia.server.vendor",
          "jolokia.url",
          "log.file.path",
          "log.source.address",
          "stream",
          "input.type",
          "syslog.severity_label",
          "syslog.facility_label",
          "process.program",
          "log.flags",
          "user_agent.os.full_name",
          "fileset.name",
          "icmp.code",
          "icmp.type",
          "igmp.type",
          "azure.eventhub",
          "azure.consumer_group",
          "kafka.topic",
          "kafka.key",
          "activemq.caller",
          "activemq.thread",
          "activemq.user",
          "activemq.log.stack_trace",
          "apache.access.ssl.protocol",
          "apache.access.ssl.cipher",
          "apache.error.module",
          "user.terminal",
          "user.audit.id",
          "user.audit.name",
          "user.audit.group.id",
          "user.audit.group.name",
          "user.effective.id",
          "user.effective.name",
          "user.effective.group.id",
          "user.effective.group.name",
          "user.filesystem.id",
          "user.filesystem.name",
          "user.filesystem.group.id",
          "user.filesystem.group.name",
          "user.owner.id",
          "user.owner.name",
          "user.owner.group.id",
          "user.owner.group.name",
          "user.saved.id",
          "user.saved.name",
          "user.saved.group.id",
          "user.saved.group.name",
          "auditd.log.old_auid",
          "auditd.log.new_auid",
          "auditd.log.old_ses",
          "auditd.log.new_ses",
          "auditd.log.items",
          "auditd.log.item",
          "auditd.log.tty",
          "auditd.log.a0",
          "azure.subscription_id",
          "azure.correlation_id",
          "azure.tenant_id",
          "azure.resource.id",
          "azure.resource.group",
          "azure.resource.provider",
          "azure.resource.namespace",
          "azure.resource.name",
          "azure.resource.authorization_rule",
          "cisco.asa.message_id",
          "cisco.asa.suffix",
          "cisco.asa.source_interface",
          "cisco.asa.destination_interface",
          "cisco.asa.rule_name",
          "cisco.asa.source_username",
          "cisco.asa.destination_username",
          "cisco.asa.threat_level",
          "cisco.asa.threat_category",
          "cisco.asa.connection_id",
          "cisco.ftd.message_id",
          "cisco.ftd.suffix",
          "cisco.ftd.source_interface",
          "cisco.ftd.destination_interface",
          "cisco.ftd.rule_name",
          "cisco.ftd.source_username",
          "cisco.ftd.destination_username",
          "cisco.ftd.threat_level",
          "cisco.ftd.threat_category",
          "cisco.ftd.connection_id",
          "cisco.ios.access_list",
          "cisco.ios.facility",
          "coredns.id",
          "coredns.query.class",
          "coredns.query.name",
          "coredns.query.type",
          "coredns.response.code",
          "coredns.response.flags",
          "cef.version",
          "cef.device.vendor",
          "cef.device.product",
          "cef.device.version",
          "cef.device.event_class_id",
          "cef.severity",
          "cef.name",
          "source.service.name",
          "destination.service.name",
          "elasticsearch.component",
          "elasticsearch.cluster.uuid",
          "elasticsearch.cluster.name",
          "elasticsearch.node.id",
          "elasticsearch.node.name",
          "elasticsearch.index.name",
          "elasticsearch.index.id",
          "elasticsearch.shard.id",
          "elasticsearch.audit.layer",
          "elasticsearch.audit.event_type",
          "elasticsearch.audit.origin.type",
          "elasticsearch.audit.realm",
          "elasticsearch.audit.user.realm",
          "elasticsearch.audit.user.roles",
          "elasticsearch.audit.action",
          "elasticsearch.audit.url.params",
          "elasticsearch.audit.indices",
          "elasticsearch.audit.request.id",
          "elasticsearch.audit.request.name",
          "elasticsearch.audit.message",
          "elasticsearch.gc.phase.name",
          "elasticsearch.gc.tags",
          "elasticsearch.slowlog.logger",
          "elasticsearch.slowlog.took",
          "elasticsearch.slowlog.types",
          "elasticsearch.slowlog.stats",
          "elasticsearch.slowlog.search_type",
          "elasticsearch.slowlog.source_query",
          "elasticsearch.slowlog.extra_source",
          "elasticsearch.slowlog.total_hits",
          "elasticsearch.slowlog.total_shards",
          "elasticsearch.slowlog.routing",
          "elasticsearch.slowlog.id",
          "elasticsearch.slowlog.type",
          "elasticsearch.slowlog.source",
          "envoyproxy.log_type",
          "envoyproxy.response_flags",
          "envoyproxy.request_id",
          "envoyproxy.authority",
          "envoyproxy.proxy_type",
          "fortinet.file.hash.crc32",
          "googlecloud.destination.instance.project_id",
          "googlecloud.destination.instance.region",
          "googlecloud.destination.instance.zone",
          "googlecloud.destination.vpc.project_id",
          "googlecloud.destination.vpc.vpc_name",
          "googlecloud.destination.vpc.subnetwork_name",
          "googlecloud.source.instance.project_id",
          "googlecloud.source.instance.region",
          "googlecloud.source.instance.zone",
          "googlecloud.source.vpc.project_id",
          "googlecloud.source.vpc.vpc_name",
          "googlecloud.source.vpc.subnetwork_name",
          "googlecloud.audit.type",
          "googlecloud.audit.authentication_info.principal_email",
          "googlecloud.audit.authentication_info.authority_selector",
          "googlecloud.audit.method_name",
          "googlecloud.audit.request.proto_name",
          "googlecloud.audit.request.filter",
          "googlecloud.audit.request.name",
          "googlecloud.audit.request.resource_name",
          "googlecloud.audit.request_metadata.caller_supplied_user_agent",
          "googlecloud.audit.response.proto_name",
          "googlecloud.audit.response.details.group",
          "googlecloud.audit.response.details.kind",
          "googlecloud.audit.response.details.name",
          "googlecloud.audit.response.details.uid",
          "googlecloud.audit.response.status",
          "googlecloud.audit.resource_name",
          "googlecloud.audit.resource_location.current_locations",
          "googlecloud.audit.service_name",
          "googlecloud.audit.status.message",
          "googlecloud.firewall.rule_details.action",
          "googlecloud.firewall.rule_details.direction",
          "googlecloud.firewall.rule_details.reference",
          "googlecloud.firewall.rule_details.source_range",
          "googlecloud.firewall.rule_details.destination_range",
          "googlecloud.firewall.rule_details.source_tag",
          "googlecloud.firewall.rule_details.target_tag",
          "googlecloud.firewall.rule_details.source_service_account",
          "googlecloud.firewall.rule_details.target_service_account",
          "googlecloud.vpcflow.reporter",
          "haproxy.frontend_name",
          "haproxy.backend_name",
          "haproxy.server_name",
          "haproxy.bind_name",
          "haproxy.error_message",
          "haproxy.source",
          "haproxy.termination_state",
          "haproxy.mode",
          "haproxy.http.response.captured_cookie",
          "haproxy.http.response.captured_headers",
          "haproxy.http.request.captured_cookie",
          "haproxy.http.request.captured_headers",
          "haproxy.http.request.raw_request_line",
          "ibmmq.errorlog.installation",
          "ibmmq.errorlog.qmgr",
          "ibmmq.errorlog.arithinsert",
          "ibmmq.errorlog.commentinsert",
          "ibmmq.errorlog.errordescription",
          "ibmmq.errorlog.explanation",
          "ibmmq.errorlog.action",
          "ibmmq.errorlog.code",
          "icinga.debug.facility",
          "icinga.main.facility",
          "icinga.startup.facility",
          "iis.access.site_name",
          "iis.access.server_name",
          "iis.access.cookie",
          "iis.error.reason_phrase",
          "iis.error.queue_name",
          "iptables.fragment_flags",
          "iptables.input_device",
          "iptables.output_device",
          "iptables.tcp.flags",
          "iptables.ubiquiti.input_zone",
          "iptables.ubiquiti.output_zone",
          "iptables.ubiquiti.rule_number",
          "iptables.ubiquiti.rule_set",
          "kafka.log.component",
          "kafka.log.class",
          "kafka.log.thread",
          "kafka.log.trace.class",
          "kafka.log.trace.message",
          "kibana.log.tags",
          "kibana.log.state",
          "logstash.log.module",
          "text",
          "logstash.log.thread",
          "logstash.log.pipeline_id",
          "logstash.slowlog.module",
          "text",
          "logstash.slowlog.thread",
          "text",
          "logstash.slowlog.event",
          "logstash.slowlog.plugin_name",
          "logstash.slowlog.plugin_type",
          "text",
          "logstash.slowlog.plugin_params",
          "misp.attack_pattern.id",
          "misp.attack_pattern.name",
          "misp.attack_pattern.description",
          "misp.attack_pattern.kill_chain_phases",
          "misp.campaign.id",
          "misp.campaign.name",
          "misp.campaign.description",
          "misp.campaign.aliases",
          "misp.campaign.objective",
          "misp.course_of_action.id",
          "misp.course_of_action.name",
          "misp.course_of_action.description",
          "misp.identity.id",
          "misp.identity.name",
          "misp.identity.description",
          "misp.identity.identity_class",
          "misp.identity.labels",
          "misp.identity.sectors",
          "misp.identity.contact_information",
          "misp.intrusion_set.id",
          "misp.intrusion_set.name",
          "misp.intrusion_set.description",
          "misp.intrusion_set.aliases",
          "misp.intrusion_set.goals",
          "misp.intrusion_set.resource_level",
          "misp.intrusion_set.primary_motivation",
          "misp.intrusion_set.secondary_motivations",
          "misp.malware.id",
          "misp.malware.name",
          "misp.malware.description",
          "misp.malware.labels",
          "misp.malware.kill_chain_phases",
          "misp.note.id",
          "misp.note.summary",
          "misp.note.description",
          "misp.note.authors",
          "misp.note.object_refs",
          "misp.threat_indicator.labels",
          "misp.threat_indicator.id",
          "misp.threat_indicator.version",
          "misp.threat_indicator.type",
          "misp.threat_indicator.description",
          "misp.threat_indicator.feed",
          "misp.threat_indicator.severity",
          "misp.threat_indicator.confidence",
          "misp.threat_indicator.kill_chain_phases",
          "misp.threat_indicator.mitre_tactic",
          "misp.threat_indicator.mitre_technique",
          "misp.threat_indicator.attack_pattern",
          "misp.threat_indicator.attack_pattern_kql",
          "misp.threat_indicator.intrusion_set",
          "misp.threat_indicator.campaign",
          "misp.threat_indicator.threat_actor",
          "misp.observed_data.id",
          "misp.observed_data.objects",
          "misp.report.id",
          "misp.report.labels",
          "misp.report.name",
          "misp.report.description",
          "misp.report.object_refs",
          "misp.threat_actor.id",
          "misp.threat_actor.labels",
          "misp.threat_actor.name",
          "misp.threat_actor.description",
          "misp.threat_actor.aliases",
          "misp.threat_actor.roles",
          "misp.threat_actor.goals",
          "misp.threat_actor.sophistication",
          "misp.threat_actor.resource_level",
          "misp.threat_actor.primary_motivation",
          "misp.threat_actor.secondary_motivations",
          "misp.threat_actor.personal_motivations",
          "misp.tool.id",
          "misp.tool.labels",
          "misp.tool.name",
          "misp.tool.description",
          "misp.tool.tool_version",
          "misp.tool.kill_chain_phases",
          "misp.vulnerability.id",
          "misp.vulnerability.name",
          "misp.vulnerability.description",
          "mongodb.log.component",
          "mongodb.log.context",
          "mssql.log.origin",
          "mysql.slowlog.query",
          "mysql.slowlog.schema",
          "mysql.slowlog.current_user",
          "mysql.slowlog.last_errno",
          "mysql.slowlog.killed",
          "mysql.slowlog.log_slow_rate_type",
          "mysql.slowlog.log_slow_rate_limit",
          "mysql.slowlog.innodb.trx_id",
          "nats.log.msg.type",
          "nats.log.msg.subject",
          "nats.log.msg.reply_to",
          "nats.log.msg.error.message",
          "nats.log.msg.queue_group",
          "netflow.type",
          "netflow.exporter.address",
          "netflow.source_mac_address",
          "netflow.post_destination_mac_address",
          "netflow.destination_mac_address",
          "netflow.post_source_mac_address",
          "netflow.interface_name",
          "netflow.interface_description",
          "netflow.sampler_name",
          "netflow.application_description",
          "netflow.application_name",
          "netflow.class_name",
          "netflow.wlan_ssid",
          "netflow.vr_fname",
          "netflow.metro_evc_id",
          "netflow.nat_pool_name",
          "netflow.p2p_technology",
          "netflow.tunnel_technology",
          "netflow.encrypted_technology",
          "netflow.observation_domain_name",
          "netflow.selector_name",
          "netflow.information_element_description",
          "netflow.information_element_name",
          "netflow.virtual_station_interface_name",
          "netflow.virtual_station_name",
          "netflow.sta_mac_address",
          "netflow.wtp_mac_address",
          "netflow.user_name",
          "netflow.application_category_name",
          "netflow.application_sub_category_name",
          "netflow.application_group_name",
          "netflow.dot1q_customer_source_mac_address",
          "netflow.dot1q_customer_destination_mac_address",
          "netflow.mib_context_name",
          "netflow.mib_object_name",
          "netflow.mib_object_description",
          "netflow.mib_object_syntax",
          "netflow.mib_module_name",
          "netflow.mobile_imsi",
          "netflow.mobile_msisdn",
          "netflow.http_request_method",
          "netflow.http_request_host",
          "netflow.http_request_target",
          "netflow.http_message_version",
          "netflow.http_user_agent",
          "netflow.http_content_type",
          "netflow.http_reason_phrase",
          "nginx.ingress_controller.upstream.name",
          "nginx.ingress_controller.upstream.alternative_name",
          "nginx.ingress_controller.http.request.id",
          "osquery.result.name",
          "osquery.result.action",
          "osquery.result.host_identifier",
          "osquery.result.calendar_time",
          "panw.panos.ruleset",
          "panw.panos.source.zone",
          "panw.panos.source.interface",
          "panw.panos.destination.zone",
          "panw.panos.destination.interface",
          "panw.panos.network.pcap_id",
          "panw.panos.network.nat.community_id",
          "panw.panos.file.hash",
          "panw.panos.url.category",
          "panw.panos.flow_id",
          "panw.panos.threat.resource",
          "panw.panos.threat.id",
          "panw.panos.threat.name",
          "panw.panos.action",
          "postgresql.log.timestamp",
          "postgresql.log.database",
          "postgresql.log.query",
          "postgresql.log.query_step",
          "postgresql.log.query_name",
          "rabbitmq.log.pid",
          "redis.log.role",
          "redis.slowlog.cmd",
          "redis.slowlog.key",
          "redis.slowlog.args",
          "bucket_name",
          "object_key",
          "santa.action",
          "santa.decision",
          "santa.reason",
          "santa.mode",
          "santa.disk.volume",
          "santa.disk.bus",
          "santa.disk.serial",
          "santa.disk.bsdname",
          "santa.disk.model",
          "santa.disk.fs",
          "santa.disk.mount",
          "santa.certificate.common_name",
          "santa.certificate.sha256",
          "suricata.eve.event_type",
          "suricata.eve.app_proto_orig",
          "suricata.eve.tcp.tcp_flags",
          "suricata.eve.tcp.tcp_flags_tc",
          "suricata.eve.tcp.state",
          "suricata.eve.tcp.tcp_flags_ts",
          "suricata.eve.fileinfo.sha1",
          "suricata.eve.fileinfo.state",
          "suricata.eve.fileinfo.sha256",
          "suricata.eve.fileinfo.md5",
          "suricata.eve.dns.type",
          "suricata.eve.dns.rrtype",
          "suricata.eve.dns.rrname",
          "suricata.eve.dns.rdata",
          "suricata.eve.dns.rcode",
          "suricata.eve.flow_id",
          "suricata.eve.email.status",
          "suricata.eve.http.redirect",
          "suricata.eve.http.protocol",
          "suricata.eve.http.http_content_type",
          "suricata.eve.in_iface",
          "suricata.eve.alert.category",
          "suricata.eve.alert.signature",
          "suricata.eve.ssh.client.proto_version",
          "suricata.eve.ssh.client.software_version",
          "suricata.eve.ssh.server.proto_version",
          "suricata.eve.ssh.server.software_version",
          "suricata.eve.tls.issuerdn",
          "suricata.eve.tls.sni",
          "suricata.eve.tls.version",
          "suricata.eve.tls.fingerprint",
          "suricata.eve.tls.serial",
          "suricata.eve.tls.subject",
          "suricata.eve.app_proto_ts",
          "suricata.eve.flow.state",
          "suricata.eve.flow.reason",
          "suricata.eve.app_proto_tc",
          "suricata.eve.smtp.rcpt_to",
          "suricata.eve.smtp.mail_from",
          "suricata.eve.smtp.helo",
          "suricata.eve.app_proto_expected",
          "system.auth.ssh.method",
          "system.auth.ssh.signature",
          "system.auth.ssh.event",
          "system.auth.sudo.error",
          "system.auth.sudo.tty",
          "system.auth.sudo.pwd",
          "system.auth.sudo.user",
          "system.auth.sudo.command",
          "system.auth.useradd.home",
          "system.auth.useradd.shell",
          "traefik.access.user_identifier",
          "traefik.access.frontend_name",
          "traefik.access.backend_url",
          "zeek.session_id",
          "zeek.capture_loss.peer",
          "zeek.dns.trans_id",
          "zeek.dns.query",
          "zeek.dns.qclass_name",
          "zeek.dns.qtype_name",
          "zeek.dns.rcode_name",
          "zeek.dns.answers",
          "zeek.files.fuid",
          "zeek.files.session_ids",
          "zeek.files.source",
          "zeek.files.analyzers",
          "zeek.files.mime_type",
          "zeek.files.filename",
          "zeek.files.parent_fuid",
          "zeek.files.md5",
          "zeek.files.sha1",
          "zeek.files.sha256",
          "zeek.files.extracted",
          "zeek.http.status_msg",
          "zeek.http.info_msg",
          "zeek.http.tags",
          "zeek.http.password",
          "zeek.http.proxied",
          "zeek.http.client_header_names",
          "zeek.http.server_header_names",
          "zeek.http.orig_fuids",
          "zeek.http.orig_mime_types",
          "zeek.http.orig_filenames",
          "zeek.http.resp_fuids",
          "zeek.http.resp_mime_types",
          "zeek.http.resp_filenames",
          "zeek.notice.connection_id",
          "zeek.notice.icmp_id",
          "zeek.notice.file.id",
          "zeek.notice.file.parent_id",
          "zeek.notice.file.source",
          "zeek.notice.file.mime_type",
          "zeek.notice.fuid",
          "zeek.notice.note",
          "zeek.notice.msg",
          "zeek.notice.sub",
          "zeek.notice.peer_name",
          "zeek.notice.peer_descr",
          "zeek.notice.actions",
          "zeek.notice.email_body_sections",
          "zeek.notice.email_delay_tokens",
          "zeek.notice.identifier",
          "fields.*"
        ]
      }
    },
	"analysis" : {
          "filter" : {
            "my_stopwords" : {
              "type" : "stop",
              "stopwords" : "_english_"
            },
            "synonym_filter_1" : {
              "type" : "synonym",
              "synonyms_path" : "stateAbbr.txt"
            },
            "my_custom_token" : {
              "generate_word_parts" : "true",
              "type" : "word_delimiter"
            },
            "snowball" : {
              "type" : "snowball",
              "language" : "English"
            },
            "custom_stop" : {
              "type" : "stop",
              "stopwords_path" : "stop.txt"
            },
            "stop_english" : {
              "type" : "stop",
              "stopwords" : "_english_"
            },
            "filter_shingle" : {
              "max_shingle_size" : "5",
              "min_shingle_size" : "3",
              "output_unigrams" : "true",
              "type" : "shingle",
              "filler_token" : ""
            },
            "my_stopwords_custom" : {
              "type" : "stop",
              "stopwords" : [
                "11g",
                "10g"
              ]
            }
          },
          "char_filter" : {
            "my_char_filter" : {
              "type" : "html_strip"
            }
          },
          "analyzer" : {
            "html_analyzer" : {
              "char_filter" : [
                "my_char_filter"
              ],
              "tokenizer" : "keyword"
            },
            "a2" : {
              "filter" : [
                "lowercase",
                "snowball",
                "my_stopwords_custom",
                "my_stopwords"
              ],
              "type" : "custom",
              "tokenizer" : "standard"
            },
            "a3" : {
              "filter" : [
                "my_custom_token",
                "lowercase"
              ],
              "type" : "custom",
              "tokenizer" : "standard"
            },
            "a4" : {
              "filter" : [
                "my_custom_token",
                "lowercase"
              ],
              "type" : "custom",
              "tokenizer" : "comma"
            },
            "a5" : {
              "filter" : [
                "lowercase"
              ],
              "type" : "custom",
              "tokenizer" : "comma"
            },
            "keyword_analyzer" : {
              "filter" : [
                "lowercase",
                "custom_stop",
                "stop_english"
              ],
              "tokenizer" : "standard"
            },
            "a6" : {
              "filter" : [
                "lowercase",
                "synonym_filter_1"
              ],
              "type" : "custom",
              "tokenizer" : "comma"
            },
            "analyzer_shingle" : {
              "filter" : [
                "lowercase",
                "custom_stop",
                "filter_shingle",
                "stop_english"
              ],
              "tokenizer" : "standard"
            },
            "content" : {
              "filter" : [
                "lowercase",
                "stop_english"
              ],
              "type" : "custom",
              "tokenizer" : "whitespace"
            }
          },
		  "normalizer":{
			"lc_n":{
				"filter":["lowercase"],
				"type" : "custom"
			}
		},
          "tokenizer" : {
            "comma" : {
              "pattern" : ",",
              "type" : "pattern"
            }
          }
        }
  },
  "mappings": {
    "_meta": {
      "beat": "filebeat",
      "version": "7.9.0"
    },
    "dynamic_templates": [
      {
        "labels": {
          "path_match": "labels.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "container.labels": {
          "path_match": "container.labels.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "dns.answers": {
          "path_match": "dns.answers.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "log.syslog": {
          "path_match": "log.syslog.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "network.inner": {
          "path_match": "network.inner.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "observer.egress": {
          "path_match": "observer.egress.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "observer.ingress": {
          "path_match": "observer.ingress.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "fields": {
          "path_match": "fields.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "docker.container.labels": {
          "path_match": "docker.container.labels.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "kubernetes.labels.*": {
          "path_match": "kubernetes.labels.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "*"
        }
      },
      {
        "kubernetes.annotations.*": {
          "path_match": "kubernetes.annotations.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "*"
        }
      },
      {
        "docker.attrs": {
          "path_match": "docker.attrs.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "azure.activitylogs.identity.claims.*": {
          "path_match": "azure.activitylogs.identity.claims.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "*"
        }
      },
      {
        "kibana.log.meta": {
          "path_match": "kibana.log.meta.*",
          "mapping": {
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      },
      {
        "strings_as_keyword": {
          "mapping": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "match_mapping_type": "string"
        }
      }
    ],
    "date_detection": false,
    "properties": {
      "container": {
        "properties": {
          "image": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tag": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "runtime": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "labels": {
            "type": "object"
          }
        }
      },
      "awscloudwatch": {
        "properties": {
          "log_group": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ingestion_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "log_stream": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "icinga": {
        "properties": {
          "debug": {
            "properties": {
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "startup": {
            "properties": {
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "main": {
            "properties": {
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "icmp": {
        "properties": {
          "code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "redis": {
        "properties": {
          "log": {
            "properties": {
              "role": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "slowlog": {
            "properties": {
              "duration": {
                "properties": {
                  "us": {
                    "type": "long"
                  }
                }
              },
              "args": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cmd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "type": "long"
              },
              "key": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "observer": {
        "properties": {
          "product": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "os": {
            "properties": {
              "kernel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "family": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "platform": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "full": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "serial_number": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "egress": {
            "type": "object",
            "properties": {
              "vlan": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "alias": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "geo": {
            "properties": {
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "ingress": {
            "type": "object",
            "properties": {
              "vlan": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "alias": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "hostname": {
            "ignore_above": 1024,
            "type": "keyword",
			"normalizer": "lc_n"
          },
          "vendor": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "elasticsearch": {
        "properties": {
          "server": {
            "properties": {
              "stacktrace": {
                "ignore_above": 1024,
                "index": false,
                "type": "keyword"
              },
              "gc": {
                "properties": {
                  "overhead_seq": {
                    "type": "long"
                  },
                  "young": {
                    "properties": {
                      "one": {
                        "type": "long"
                      },
                      "two": {
                        "type": "long"
                      }
                    }
                  },
                  "observation_duration": {
                    "properties": {
                      "ms": {
                        "type": "float"
                      }
                    }
                  },
                  "collection_duration": {
                    "properties": {
                      "ms": {
                        "type": "float"
                      }
                    }
                  }
                }
              }
            }
          },
          "cluster": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "uuid": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "node": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "component": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "audit": {
            "properties": {
              "request": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "indices": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "origin": {
                "properties": {
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "realm": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message": {
                "norms": false,
                "type": "text"
              },
              "user": {
                "properties": {
                  "roles": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "realm": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "layer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "url": {
                "properties": {
                  "params": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "slowlog": {
            "properties": {
              "total_shards": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "took": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "types": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logger": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "search_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "routing": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_query": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total_hits": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stats": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "extra_source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "index": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "shard": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "deprecation": {
            "properties": {}
          },
          "gc": {
            "properties": {
              "phase": {
                "properties": {
                  "cpu_time": {
                    "properties": {
                      "real_sec": {
                        "type": "float"
                      },
                      "sys_sec": {
                        "type": "float"
                      },
                      "user_sec": {
                        "type": "float"
                      }
                    }
                  },
                  "scrub_symbol_table_time_sec": {
                    "type": "float"
                  },
                  "scrub_string_table_time_sec": {
                    "type": "float"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "weak_refs_processing_time_sec": {
                    "type": "float"
                  },
                  "parallel_rescan_time_sec": {
                    "type": "float"
                  },
                  "class_unload_time_sec": {
                    "type": "float"
                  },
                  "duration_sec": {
                    "type": "float"
                  }
                }
              },
              "jvm_runtime_sec": {
                "type": "float"
              },
              "stopping_threads_time_sec": {
                "type": "float"
              },
              "old_gen": {
                "properties": {
                  "size_kb": {
                    "type": "long"
                  },
                  "used_kb": {
                    "type": "long"
                  }
                }
              },
              "young_gen": {
                "properties": {
                  "size_kb": {
                    "type": "long"
                  },
                  "used_kb": {
                    "type": "long"
                  }
                }
              },
              "threads_total_stop_time_sec": {
                "type": "float"
              },
              "heap": {
                "properties": {
                  "size_kb": {
                    "type": "long"
                  },
                  "used_kb": {
                    "type": "long"
                  }
                }
              },
              "tags": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "kibana": {
        "properties": {
          "log": {
            "properties": {
              "meta": {
                "type": "object"
              },
              "state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tags": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "azure": {
        "properties": {
          "tenant_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "consumer_group": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "auditlogs": {
            "properties": {
              "tenant_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "identity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_signature": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "properties": {
                "properties": {
                  "result": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "logged_by_service": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "initiated_by": {
                    "properties": {
                      "app": {
                        "properties": {
                          "servicePrincipalName": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "displayName": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "appId": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "servicePrincipalId": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      },
                      "user": {
                        "properties": {
                          "displayName": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "ipAddress": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "userPrincipalName": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      }
                    }
                  },
                  "activity_display_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "operation_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "correlation_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "activity_datetime": {
                    "type": "date"
                  },
                  "target_resources": {
                    "properties": {
                      "*": {
                        "properties": {
                          "user_principal_name": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "modified_properties": {
                            "properties": {
                              "*": {
                                "properties": {
                                  "old_value": {
                                    "ignore_above": 1024,
                                    "type": "keyword"
                                  },
                                  "display_name": {
                                    "ignore_above": 1024,
                                    "type": "keyword"
                                  },
                                  "new_value": {
                                    "ignore_above": 1024,
                                    "type": "keyword"
                                  }
                                }
                              }
                            }
                          },
                          "id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "ip_address": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "display_name": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "type": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      }
                    }
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "category": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "result_reason": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "offset": {
            "type": "long"
          },
          "resource": {
            "properties": {
              "provider": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "namespace": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authorization_rule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "eventhub": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "enqueued_time": {
            "type": "date"
          },
          "subscription_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sequence_number": {
            "type": "long"
          },
          "partition_id": {
            "type": "long"
          },
          "signinlogs": {
            "properties": {
              "operation_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tenant_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_description": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "identity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_signature": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "properties": {
                "properties": {
                  "risk_level_aggregated": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "client_app_used": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "is_interactive": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "service_principal_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "app_display_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "risk_level_during_signin": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "created_at": {
                    "type": "date"
                  },
                  "ip_address": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "device_detail": {
                    "properties": {
                      "device_id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "browser": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "operating_system": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "trust_type": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "display_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "risk_detail": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "token_issuer_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "resource_display_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "risk_state": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "user_principal_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "processing_time_ms": {
                    "type": "float"
                  },
                  "token_issuer_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "original_request_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "user_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "conditional_access_status": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "correlation_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "user_display_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "app_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "status": {
                    "properties": {
                      "error_code": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              }
            }
          },
          "correlation_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "activitylogs": {
            "properties": {
              "operation_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "identity": {
                "properties": {
                  "authorization": {
                    "properties": {
                      "evidence": {
                        "properties": {
                          "role_definition_id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "role": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "role_assignment_scope": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "role_assignment_id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "principal_type": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "principal_id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      },
                      "scope": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "action": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "claims": {
                    "properties": {
                      "*": {
                        "type": "object"
                      }
                    }
                  },
                  "claims_initiated_by_user": {
                    "properties": {
                      "schema": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "givenname": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "surname": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "fullname": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "result_signature": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "properties": {
                "properties": {
                  "status_code": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "service_request_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "bucket_name": {
        "ignore_above": 1024,
        "type": "keyword"
      },
      "dns": {
        "properties": {
          "op_code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "response_code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "resolved_ip": {
            "type": "ip"
          },
          "question": {
            "properties": {
              "registered_domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "top_level_domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subdomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "class": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "answers": {
            "type": "object",
            "properties": {
              "data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ttl": {
                "type": "long"
              }
            }
          },
          "header_flags": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "zeek": {
        "properties": {
          "ocsp": {
            "properties": {
              "file_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "revoke": {
                "properties": {
                  "reason": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "time": {
                    "type": "date"
                  }
                }
              },
              "update": {
                "properties": {
                  "next": {
                    "type": "date"
                  },
                  "this": {
                    "type": "date"
                  }
                }
              },
              "serial_number": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "properties": {
                  "issuer": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "key": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "algorithm": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "ssh": {
            "properties": {
              "server": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_key": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "auth": {
                "properties": {
                  "success": {
                    "type": "boolean"
                  },
                  "attempts": {
                    "type": "long"
                  }
                }
              },
              "client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "type": "long"
              },
              "algorithm": {
                "properties": {
                  "cipher": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "host_key": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "compression": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "key_exchange": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "mac": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "direction": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "capture_loss": {
            "properties": {
              "peer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acks": {
                "type": "long"
              },
              "ts_delta": {
                "type": "long"
              },
              "gaps": {
                "type": "long"
              },
              "percent_lost": {
                "type": "double"
              }
            }
          },
          "kerberos": {
            "properties": {
              "valid": {
                "properties": {
                  "days": {
                    "type": "long"
                  },
                  "from": {
                    "type": "date"
                  },
                  "until": {
                    "type": "date"
                  }
                }
              },
              "cipher": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ticket": {
                "properties": {
                  "new": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "auth": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "service": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "renewable": {
                "type": "boolean"
              },
              "success": {
                "type": "boolean"
              },
              "client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert": {
                "properties": {
                  "server": {
                    "properties": {
                      "subject": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "fuid": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "value": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "client": {
                    "properties": {
                      "subject": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "fuid": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "value": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "error": {
                "properties": {
                  "msg": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "code": {
                    "type": "long"
                  }
                }
              },
              "forwardable": {
                "type": "boolean"
              }
            }
          },
          "syslog": {
            "properties": {
              "severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "snmp": {
            "properties": {
              "duration": {
                "type": "double"
              },
              "up_since": {
                "type": "date"
              },
              "set": {
                "properties": {
                  "requests": {
                    "type": "long"
                  }
                }
              },
              "display_string": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "get": {
                "properties": {
                  "responses": {
                    "type": "long"
                  },
                  "bulk_requests": {
                    "type": "long"
                  },
                  "requests": {
                    "type": "long"
                  }
                }
              },
              "community": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "ssl": {
            "properties": {
              "established": {
                "type": "boolean"
              },
              "cipher": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "server": {
                "properties": {
                  "subject": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "cert_chain_fuids": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "cert_chain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "issuer": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "curve": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client": {
                "properties": {
                  "subject": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "cert_chain_fuids": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "cert_chain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "issuer": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "next_protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "last_alert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resumed": {
                "type": "boolean"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "validation": {
                "properties": {
                  "code": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "status": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "stats": {
            "properties": {
              "dns_requests": {
                "properties": {
                  "count": {
                    "type": "long"
                  },
                  "active": {
                    "type": "long"
                  }
                }
              },
              "timers": {
                "properties": {
                  "count": {
                    "type": "long"
                  },
                  "active": {
                    "type": "long"
                  }
                }
              },
              "memory": {
                "type": "long"
              },
              "bytes": {
                "properties": {
                  "received": {
                    "type": "long"
                  }
                }
              },
              "timestamp_lag": {
                "type": "long"
              },
              "peer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reassembly_size": {
                "properties": {
                  "tcp": {
                    "type": "long"
                  },
                  "frag": {
                    "type": "long"
                  },
                  "file": {
                    "type": "long"
                  },
                  "unknown": {
                    "type": "long"
                  }
                }
              },
              "files": {
                "properties": {
                  "count": {
                    "type": "long"
                  },
                  "active": {
                    "type": "long"
                  }
                }
              },
              "connections": {
                "properties": {
                  "udp": {
                    "properties": {
                      "count": {
                        "type": "long"
                      },
                      "active": {
                        "type": "long"
                      }
                    }
                  },
                  "tcp": {
                    "properties": {
                      "count": {
                        "type": "long"
                      },
                      "active": {
                        "type": "long"
                      }
                    }
                  },
                  "icmp": {
                    "properties": {
                      "count": {
                        "type": "long"
                      },
                      "active": {
                        "type": "long"
                      }
                    }
                  }
                }
              },
              "events": {
                "properties": {
                  "processed": {
                    "type": "long"
                  },
                  "queued": {
                    "type": "long"
                  }
                }
              },
              "packets": {
                "properties": {
                  "processed": {
                    "type": "long"
                  },
                  "dropped": {
                    "type": "long"
                  },
                  "received": {
                    "type": "long"
                  }
                }
              }
            }
          },
          "dpd": {
            "properties": {
              "analyzer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "failure_reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "packet_segment": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "mysql": {
            "properties": {
              "response": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "success": {
                "type": "boolean"
              },
              "arg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cmd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rows": {
                "type": "long"
              }
            }
          },
          "connection": {
            "properties": {
              "local_resp": {
                "type": "boolean"
              },
              "vlan": {
                "type": "long"
              },
              "inner_vlan": {
                "type": "long"
              },
              "local_orig": {
                "type": "boolean"
              },
              "state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "history": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "missed_bytes": {
                "type": "long"
              },
              "icmp": {
                "properties": {
                  "code": {
                    "type": "long"
                  },
                  "type": {
                    "type": "long"
                  }
                }
              },
              "state_message": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "sip": {
            "properties": {
              "date": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request": {
                "properties": {
                  "path": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "from": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "to": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "body_length": {
                    "type": "long"
                  }
                }
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "transaction_depth": {
                "type": "long"
              },
              "uri": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "call_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sequence": {
                "properties": {
                  "number": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "method": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "reply_to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "content_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "response": {
                "properties": {
                  "path": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "from": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "to": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "body_length": {
                    "type": "long"
                  }
                }
              },
              "warning": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_agent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "properties": {
                  "msg": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "code": {
                    "type": "long"
                  }
                }
              }
            }
          },
          "irc": {
            "properties": {
              "nick": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dcc": {
                "properties": {
                  "file": {
                    "properties": {
                      "size": {
                        "type": "long"
                      },
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "mime_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "addl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "command": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "radius": {
            "properties": {
              "result": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remote_ip": {
                "type": "ip"
              },
              "connect_info": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logged": {
                "type": "boolean"
              },
              "reply_msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "framed_addr": {
                "type": "ip"
              },
              "ttl": {
                "type": "long"
              },
              "mac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "username": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "dhcp": {
            "properties": {
              "msg": {
                "properties": {
                  "server": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "types": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "origin": {
                    "type": "ip"
                  },
                  "client": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "duration": {
                "type": "double"
              },
              "hostname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "address": {
                "properties": {
                  "server": {
                    "type": "ip"
                  },
                  "requested": {
                    "type": "ip"
                  },
                  "client": {
                    "type": "ip"
                  },
                  "assigned": {
                    "type": "ip"
                  },
                  "mac": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "software": {
                "properties": {
                  "server": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "client": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "client_fqdn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lease_time": {
                "type": "long"
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "properties": {
                  "subscriber": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "circuit": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "remote_agent": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "notice": {
            "properties": {
              "suppress_for": {
                "type": "double"
              },
              "msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "note": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sub": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "identifier": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email_delay_tokens": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dropped": {
                "type": "boolean"
              },
              "false": {
                "type": "long"
              },
              "email_body_sections": {
                "norms": false,
                "type": "text"
              },
              "ffile": {
                "properties": {
                  "total_bytes": {
                    "type": "long"
                  }
                }
              },
              "peer_descr": {
                "norms": false,
                "type": "text"
              },
              "icmp_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file": {
                "properties": {
                  "mime_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "parent_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "source": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "seen_bytes": {
                    "type": "long"
                  },
                  "is_orig": {
                    "type": "boolean"
                  },
                  "missing_bytes": {
                    "type": "long"
                  },
                  "overflow_bytes": {
                    "type": "long"
                  }
                }
              },
              "connection_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "peer_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "actions": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "dnp3": {
            "properties": {
              "function": {
                "properties": {
                  "request": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "reply": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "id": {
                "type": "long"
              }
            }
          },
          "smtp": {
            "properties": {
              "cc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "date": {
                "type": "date"
              },
              "x_originating_ip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "second_received": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mail_from": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "transaction_depth": {
                "type": "long"
              },
              "in_reply_to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "helo": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "path": {
                "type": "ip"
              },
              "rcpt_to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "process_received_from": {
                "type": "boolean"
              },
              "has_client_activity": {
                "type": "boolean"
              },
              "reply_to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "is_webmail": {
                "type": "boolean"
              },
              "last_reply": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "from": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tls": {
                "type": "boolean"
              },
              "to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msg_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "first_received": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fuids": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_agent": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "ftp": {
            "properties": {
              "cmdarg": {
                "properties": {
                  "arg": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "cmd": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "seq": {
                    "type": "long"
                  }
                }
              },
              "last_auth_requested": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "passive": {
                "type": "boolean"
              },
              "command": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cwd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "data_channel": {
                "properties": {
                  "response_port": {
                    "type": "long"
                  },
                  "response_host": {
                    "type": "ip"
                  },
                  "passive": {
                    "type": "boolean"
                  },
                  "originating_host": {
                    "type": "ip"
                  }
                }
              },
              "password": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file": {
                "properties": {
                  "size": {
                    "type": "long"
                  },
                  "mime_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "fuid": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "pending_commands": {
                "type": "long"
              },
              "capture_password": {
                "type": "boolean"
              },
              "arg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reply": {
                "properties": {
                  "msg": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "code": {
                    "type": "long"
                  }
                }
              },
              "user": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "socks": {
            "properties": {
              "request": {
                "properties": {
                  "port": {
                    "type": "long"
                  },
                  "host": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "password": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bound": {
                "properties": {
                  "port": {
                    "type": "long"
                  },
                  "host": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "capture_password": {
                "type": "boolean"
              },
              "version": {
                "type": "long"
              },
              "user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "dns": {
            "properties": {
              "AA": {
                "type": "boolean"
              },
              "TTLs": {
                "type": "double"
              },
              "qclass_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "qtype_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "qtype": {
                "type": "long"
              },
              "rejected": {
                "type": "boolean"
              },
              "query": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total_replies": {
                "type": "long"
              },
              "answers": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rcode": {
                "type": "long"
              },
              "trans_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RA": {
                "type": "boolean"
              },
              "rcode_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TC": {
                "type": "boolean"
              },
              "RD": {
                "type": "boolean"
              },
              "saw_query": {
                "type": "boolean"
              },
              "saw_reply": {
                "type": "boolean"
              },
              "rtt": {
                "type": "double"
              },
              "total_answers": {
                "type": "long"
              },
              "qclass": {
                "type": "long"
              }
            }
          },
          "session_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "smb_files": {
            "properties": {
              "fid": {
                "type": "long"
              },
              "path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "times": {
                "properties": {
                  "created": {
                    "type": "date"
                  },
                  "modified": {
                    "type": "date"
                  },
                  "accessed": {
                    "type": "date"
                  },
                  "changed": {
                    "type": "date"
                  }
                }
              },
              "size": {
                "type": "long"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "previous_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "uuid": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "intel": {
            "properties": {
              "sources": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "matched": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_mime_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "seen": {
                "properties": {
                  "indicator": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "node": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "uid": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "conn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "f": {
                    "type": "object"
                  },
                  "host": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "where": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "indicator_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "fuid": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "rfb": {
            "properties": {
              "auth": {
                "properties": {
                  "method": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "success": {
                    "type": "boolean"
                  }
                }
              },
              "width": {
                "type": "long"
              },
              "share_flag": {
                "type": "boolean"
              },
              "version": {
                "properties": {
                  "server": {
                    "properties": {
                      "major": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "minor": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "client": {
                    "properties": {
                      "major": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "minor": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "desktop_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "height": {
                "type": "long"
              }
            }
          },
          "x509": {
            "properties": {
              "log_cert": {
                "type": "boolean"
              },
              "san": {
                "properties": {
                  "other_fields": {
                    "type": "boolean"
                  },
                  "ip": {
                    "type": "ip"
                  },
                  "dns": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "uri": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "certificate": {
                "properties": {
                  "valid": {
                    "properties": {
                      "from": {
                        "type": "date"
                      },
                      "until": {
                        "type": "date"
                      }
                    }
                  },
                  "curve": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "serial": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "subject": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "signature_algorithm": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "common_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "version": {
                    "type": "long"
                  },
                  "key": {
                    "properties": {
                      "length": {
                        "type": "long"
                      },
                      "type": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "algorithm": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "issuer": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organization": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "locality": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "common_name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "organizational_unit": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "exponent": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "basic_constraints": {
                "properties": {
                  "certificate_authority": {
                    "type": "boolean"
                  },
                  "path_length": {
                    "type": "long"
                  }
                }
              }
            }
          },
          "weird": {
            "properties": {
              "identifier": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "additional_info": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "peer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "notice": {
                "type": "boolean"
              }
            }
          },
          "ntlm": {
            "properties": {
              "server": {
                "properties": {
                  "name": {
                    "properties": {
                      "dns": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "tree": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "netbios": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "hostname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "success": {
                "type": "boolean"
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "username": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "modbus": {
            "properties": {
              "exception": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "function": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "track_address": {
                "type": "long"
              }
            }
          },
          "pe": {
            "properties": {
              "compile_time": {
                "type": "date"
              },
              "uses_aslr": {
                "type": "boolean"
              },
              "os": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subsystem": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "section_names": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "has_export_table": {
                "type": "boolean"
              },
              "is_64bit": {
                "type": "boolean"
              },
              "uses_dep": {
                "type": "boolean"
              },
              "has_cert_table": {
                "type": "boolean"
              },
              "has_debug_data": {
                "type": "boolean"
              },
              "has_import_table": {
                "type": "boolean"
              },
              "uses_seh": {
                "type": "boolean"
              },
              "is_exe": {
                "type": "boolean"
              },
              "machine": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "uses_code_integrity": {
                "type": "boolean"
              }
            }
          },
          "dce_rpc": {
            "properties": {
              "named_pipe": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "endpoint": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rtt": {
                "type": "long"
              },
              "operation": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "smb_mapping": {
            "properties": {
              "path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "share_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "service": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "native_file_system": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "http": {
            "properties": {
              "orig_mime_depth": {
                "type": "long"
              },
              "server_header_names": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resp_mime_depth": {
                "type": "long"
              },
              "proxied": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "orig_mime_types": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tags": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "info_msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resp_mime_types": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_depth": {
                "type": "long"
              },
              "password": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client_header_names": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "orig_fuids": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "orig_filenames": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "range_request": {
                "type": "boolean"
              },
              "captured_password": {
                "type": "boolean"
              },
              "status_msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resp_filenames": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resp_fuids": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "info_code": {
                "type": "long"
              }
            }
          },
          "files": {
            "properties": {
              "timedout": {
                "type": "boolean"
              },
              "sha256": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tx_host": {
                "type": "ip"
              },
              "source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "extracted": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "duration": {
                "type": "double"
              },
              "entropy": {
                "type": "double"
              },
              "analyzers": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total_bytes": {
                "type": "long"
              },
              "fuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "seen_bytes": {
                "type": "long"
              },
              "missing_bytes": {
                "type": "long"
              },
              "session_ids": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "parent_fuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "local_orig": {
                "type": "boolean"
              },
              "is_orig": {
                "type": "boolean"
              },
              "extracted_cutoff": {
                "type": "boolean"
              },
              "overflow_bytes": {
                "type": "long"
              },
              "sha1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "depth": {
                "type": "long"
              },
              "mime_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rx_host": {
                "type": "ip"
              },
              "extracted_size": {
                "type": "long"
              },
              "md5": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "smb_cmd": {
            "properties": {
              "argument": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rtt": {
                "type": "double"
              },
              "file": {
                "properties": {
                  "uid": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "host": {
                    "properties": {
                      "tx": {
                        "type": "ip"
                      },
                      "rx": {
                        "type": "ip"
                      }
                    }
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "action": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "smb2_offered_dialects": {
                "type": "long"
              },
              "tree_service": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tree": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "smb1_offered_dialects": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sub_command": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "command": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "username": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "tunnel": {
            "properties": {
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "rdp": {
            "properties": {
              "result": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "desktop": {
                "properties": {
                  "width": {
                    "type": "long"
                  },
                  "color_depth": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "height": {
                    "type": "long"
                  }
                }
              },
              "cookie": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "encryption": {
                "properties": {
                  "method": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "level": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "security_protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client": {
                "properties": {
                  "build": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "product_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "client_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "cert": {
                "properties": {
                  "permanent": {
                    "type": "boolean"
                  },
                  "count": {
                    "type": "long"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "ssl": {
                "type": "boolean"
              },
              "done": {
                "type": "boolean"
              },
              "keyboard_layout": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "vulnerability": {
        "properties": {
          "severity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reference": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "score": {
            "properties": {
              "environmental": {
                "type": "float"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "temporal": {
                "type": "float"
              },
              "base": {
                "type": "float"
              }
            }
          },
          "report_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scanner": {
            "properties": {
              "vendor": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "description": {
            "ignore_above": 1024,
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            },
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "classification": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "enumeration": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "tags": {
        "ignore_above": 1024,
        "type": "keyword"
      },
      "labels": {
        "type": "object"
      },
      "input": {
        "properties": {
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "as": {
        "properties": {
          "number": {
            "type": "long"
          },
          "organization": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              }
            }
          }
        }
      },
      "system": {
        "properties": {
          "auth": {
            "properties": {
              "ssh": {
                "properties": {
                  "geoip": {
                    "properties": {}
                  },
                  "dropped_ip": {
                    "type": "ip"
                  },
                  "method": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "signature": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "event": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "sudo": {
                "properties": {
                  "tty": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "pwd": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "error": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "user": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "command": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "useradd": {
                "properties": {
                  "shell": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "home": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "groupadd": {
                "properties": {}
              }
            }
          },
          "syslog": {
            "properties": {}
          }
        }
      },
      "kafka": {
        "properties": {
          "partition": {
            "type": "long"
          },
          "offset": {
            "type": "long"
          },
          "log": {
            "properties": {
              "trace": {
                "properties": {
                  "message": {
                    "norms": false,
                    "type": "text"
                  },
                  "class": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "component": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "thread": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "class": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "block_timestamp": {
            "type": "date"
          },
          "topic": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "key": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "suricata": {
        "properties": {
          "eve": {
            "properties": {
              "icmp_type": {
                "type": "long"
              },
              "flags": {
                "properties": {}
              },
              "ssh": {
                "properties": {
                  "server": {
                    "properties": {
                      "proto_version": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "software_version": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "client": {
                    "properties": {
                      "proto_version": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "software_version": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "app_proto_orig": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "src_ip": {
                "path": "source.ip",
                "type": "alias"
              },
              "event_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alert": {
                "properties": {
                  "severity": {
                    "path": "event.severity",
                    "type": "alias"
                  },
                  "rev": {
                    "type": "long"
                  },
                  "signature_id": {
                    "type": "long"
                  },
                  "gid": {
                    "type": "long"
                  },
                  "signature": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "action": {
                    "path": "event.outcome",
                    "type": "alias"
                  },
                  "category": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "stats": {
                "properties": {
                  "tcp": {
                    "properties": {
                      "invalid_checksum": {
                        "type": "long"
                      },
                      "insert_data_overlap_fail": {
                        "type": "long"
                      },
                      "ssn_memcap_drop": {
                        "type": "long"
                      },
                      "sessions": {
                        "type": "long"
                      },
                      "overlap_diff_data": {
                        "type": "long"
                      },
                      "syn": {
                        "type": "long"
                      },
                      "stream_depth_reached": {
                        "type": "long"
                      },
                      "segment_memcap_drop": {
                        "type": "long"
                      },
                      "no_flow": {
                        "type": "long"
                      },
                      "memuse": {
                        "type": "long"
                      },
                      "pseudo_failed": {
                        "type": "long"
                      },
                      "rst": {
                        "type": "long"
                      },
                      "reassembly_gap": {
                        "type": "long"
                      },
                      "overlap": {
                        "type": "long"
                      },
                      "insert_list_fail": {
                        "type": "long"
                      },
                      "synack": {
                        "type": "long"
                      },
                      "reassembly_memuse": {
                        "type": "long"
                      },
                      "pseudo": {
                        "type": "long"
                      },
                      "insert_data_normal_fail": {
                        "type": "long"
                      }
                    }
                  },
                  "defrag": {
                    "properties": {
                      "max_frag_hits": {
                        "type": "long"
                      },
                      "ipv4": {
                        "properties": {
                          "reassembled": {
                            "type": "long"
                          },
                          "timeouts": {
                            "type": "long"
                          },
                          "fragments": {
                            "type": "long"
                          }
                        }
                      },
                      "ipv6": {
                        "properties": {
                          "reassembled": {
                            "type": "long"
                          },
                          "timeouts": {
                            "type": "long"
                          },
                          "fragments": {
                            "type": "long"
                          }
                        }
                      }
                    }
                  },
                  "app_layer": {
                    "properties": {
                      "tx": {
                        "properties": {
                          "dcerpc_tcp": {
                            "type": "long"
                          },
                          "dcerpc_udp": {
                            "type": "long"
                          },
                          "ftp": {
                            "type": "long"
                          },
                          "smtp": {
                            "type": "long"
                          },
                          "ssh": {
                            "type": "long"
                          },
                          "http": {
                            "type": "long"
                          },
                          "smb": {
                            "type": "long"
                          },
                          "tls": {
                            "type": "long"
                          },
                          "dns_udp": {
                            "type": "long"
                          },
                          "dns_tcp": {
                            "type": "long"
                          }
                        }
                      },
                      "flow": {
                        "properties": {
                          "imap": {
                            "type": "long"
                          },
                          "dcerpc_tcp": {
                            "type": "long"
                          },
                          "dcerpc_udp": {
                            "type": "long"
                          },
                          "ftp": {
                            "type": "long"
                          },
                          "smtp": {
                            "type": "long"
                          },
                          "smb": {
                            "type": "long"
                          },
                          "ssh": {
                            "type": "long"
                          },
                          "msn": {
                            "type": "long"
                          },
                          "failed_udp": {
                            "type": "long"
                          },
                          "failed_tcp": {
                            "type": "long"
                          },
                          "dns_udp": {
                            "type": "long"
                          },
                          "dns_tcp": {
                            "type": "long"
                          },
                          "http": {
                            "type": "long"
                          },
                          "tls": {
                            "type": "long"
                          }
                        }
                      }
                    }
                  },
                  "dns": {
                    "properties": {
                      "memuse": {
                        "type": "long"
                      },
                      "memcap_state": {
                        "type": "long"
                      },
                      "memcap_global": {
                        "type": "long"
                      }
                    }
                  },
                  "capture": {
                    "properties": {
                      "kernel_drops": {
                        "type": "long"
                      },
                      "kernel_ifdrops": {
                        "type": "long"
                      },
                      "kernel_packets": {
                        "type": "long"
                      }
                    }
                  },
                  "http": {
                    "properties": {
                      "memuse": {
                        "type": "long"
                      },
                      "memcap": {
                        "type": "long"
                      }
                    }
                  },
                  "detect": {
                    "properties": {
                      "alert": {
                        "type": "long"
                      }
                    }
                  },
                  "decoder": {
                    "properties": {
                      "udp": {
                        "type": "long"
                      },
                      "dce": {
                        "properties": {
                          "pkt_too_small": {
                            "type": "long"
                          }
                        }
                      },
                      "ieee8021ah": {
                        "type": "long"
                      },
                      "pkts": {
                        "type": "long"
                      },
                      "ipv4": {
                        "type": "long"
                      },
                      "vlan": {
                        "type": "long"
                      },
                      "ipv6": {
                        "type": "long"
                      },
                      "pppoe": {
                        "type": "long"
                      },
                      "teredo": {
                        "type": "long"
                      },
                      "mpls": {
                        "type": "long"
                      },
                      "gre": {
                        "type": "long"
                      },
                      "vlan_qinq": {
                        "type": "long"
                      },
                      "max_pkt_size": {
                        "type": "long"
                      },
                      "ipraw": {
                        "properties": {
                          "invalid_ip_version": {
                            "type": "long"
                          }
                        }
                      },
                      "tcp": {
                        "type": "long"
                      },
                      "erspan": {
                        "type": "long"
                      },
                      "icmpv4": {
                        "type": "long"
                      },
                      "raw": {
                        "type": "long"
                      },
                      "ipv4_in_ipv6": {
                        "type": "long"
                      },
                      "ltnull": {
                        "properties": {
                          "unsupported_type": {
                            "type": "long"
                          },
                          "pkt_too_small": {
                            "type": "long"
                          }
                        }
                      },
                      "icmpv6": {
                        "type": "long"
                      },
                      "ethernet": {
                        "type": "long"
                      },
                      "ppp": {
                        "type": "long"
                      },
                      "sll": {
                        "type": "long"
                      },
                      "null": {
                        "type": "long"
                      },
                      "bytes": {
                        "type": "long"
                      },
                      "avg_pkt_size": {
                        "type": "long"
                      },
                      "invalid": {
                        "type": "long"
                      },
                      "sctp": {
                        "type": "long"
                      },
                      "ipv6_in_ipv6": {
                        "type": "long"
                      }
                    }
                  },
                  "flow_mgr": {
                    "properties": {
                      "bypassed_pruned": {
                        "type": "long"
                      },
                      "closed_pruned": {
                        "type": "long"
                      },
                      "rows_empty": {
                        "type": "long"
                      },
                      "flows_notimeout": {
                        "type": "long"
                      },
                      "flows_checked": {
                        "type": "long"
                      },
                      "rows_maxlen": {
                        "type": "long"
                      },
                      "flows_timeout_inuse": {
                        "type": "long"
                      },
                      "flows_removed": {
                        "type": "long"
                      },
                      "rows_checked": {
                        "type": "long"
                      },
                      "flows_timeout": {
                        "type": "long"
                      },
                      "rows_busy": {
                        "type": "long"
                      },
                      "est_pruned": {
                        "type": "long"
                      },
                      "new_pruned": {
                        "type": "long"
                      },
                      "rows_skipped": {
                        "type": "long"
                      }
                    }
                  },
                  "file_store": {
                    "properties": {
                      "open_files": {
                        "type": "long"
                      }
                    }
                  },
                  "flow": {
                    "properties": {
                      "udp": {
                        "type": "long"
                      },
                      "emerg_mode_entered": {
                        "type": "long"
                      },
                      "tcp": {
                        "type": "long"
                      },
                      "memuse": {
                        "type": "long"
                      },
                      "tcp_reuse": {
                        "type": "long"
                      },
                      "icmpv4": {
                        "type": "long"
                      },
                      "emerg_mode_over": {
                        "type": "long"
                      },
                      "icmpv6": {
                        "type": "long"
                      },
                      "memcap": {
                        "type": "long"
                      },
                      "spare": {
                        "type": "long"
                      }
                    }
                  },
                  "uptime": {
                    "type": "long"
                  }
                }
              },
              "flow_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileinfo": {
                "properties": {
                  "sha1": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "filename": {
                    "path": "file.path",
                    "type": "alias"
                  },
                  "sha256": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "size": {
                    "path": "file.size",
                    "type": "alias"
                  },
                  "stored": {
                    "type": "boolean"
                  },
                  "state": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "tx_id": {
                    "type": "long"
                  },
                  "gaps": {
                    "type": "boolean"
                  },
                  "md5": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "icmp_code": {
                "type": "long"
              },
              "dest_port": {
                "path": "destination.port",
                "type": "alias"
              },
              "email": {
                "properties": {
                  "status": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "flow": {
                "properties": {
                  "reason": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "pkts_toserver": {
                    "path": "source.packets",
                    "type": "alias"
                  },
                  "alerted": {
                    "type": "boolean"
                  },
                  "start": {
                    "path": "event.start",
                    "type": "alias"
                  },
                  "end": {
                    "type": "date"
                  },
                  "bytes_toclient": {
                    "path": "destination.bytes",
                    "type": "alias"
                  },
                  "state": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "bytes_toserver": {
                    "path": "source.bytes",
                    "type": "alias"
                  },
                  "pkts_toclient": {
                    "path": "destination.packets",
                    "type": "alias"
                  },
                  "age": {
                    "type": "long"
                  }
                }
              },
              "timestamp": {
                "path": "@timestamp",
                "type": "alias"
              },
              "tcp": {
                "properties": {
                  "rst": {
                    "type": "boolean"
                  },
                  "tcp_flags_tc": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "tcp_flags_ts": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "psh": {
                    "type": "boolean"
                  },
                  "tcp_flags": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "ack": {
                    "type": "boolean"
                  },
                  "syn": {
                    "type": "boolean"
                  },
                  "fin": {
                    "type": "boolean"
                  },
                  "state": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "smtp": {
                "properties": {
                  "helo": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "rcpt_to": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "mail_from": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "pcap_cnt": {
                "type": "long"
              },
              "dns": {
                "properties": {
                  "rrname": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "rdata": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "rcode": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "type": "long"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "tx_id": {
                    "type": "long"
                  },
                  "ttl": {
                    "type": "long"
                  },
                  "rrtype": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "app_proto_tc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tx_id": {
                "type": "long"
              },
              "app_proto": {
                "path": "network.protocol",
                "type": "alias"
              },
              "in_iface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "src_port": {
                "path": "source.port",
                "type": "alias"
              },
              "proto": {
                "path": "network.transport",
                "type": "alias"
              },
              "dest_ip": {
                "path": "destination.ip",
                "type": "alias"
              },
              "app_proto_expected": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "http": {
                "properties": {
                  "redirect": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "protocol": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "hostname": {
                    "path": "url.domain",
                    "type": "alias"
                  },
                  "http_method": {
                    "path": "http.request.method",
                    "type": "alias"
                  },
                  "http_content_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "http_refer": {
                    "path": "http.request.referrer",
                    "type": "alias"
                  },
                  "length": {
                    "path": "http.response.body.bytes",
                    "type": "alias"
                  },
                  "url": {
                    "path": "url.original",
                    "type": "alias"
                  },
                  "status": {
                    "path": "http.response.status_code",
                    "type": "alias"
                  },
                  "http_user_agent": {
                    "path": "user_agent.original",
                    "type": "alias"
                  }
                }
              },
              "tls": {
                "properties": {
                  "notbefore": {
                    "type": "date"
                  },
                  "serial": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "subject": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "ja3s": {
                    "properties": {
                      "string": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "hash": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "issuerdn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "notafter": {
                    "type": "date"
                  },
                  "fingerprint": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "session_resumed": {
                    "type": "boolean"
                  },
                  "version": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "ja3": {
                    "properties": {
                      "string": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "hash": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "sni": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "app_proto_ts": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "hash": {
        "properties": {
          "sha1": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sha256": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sha512": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "md5": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "rsa": {
        "properties": {
          "internal": {
            "properties": {
              "msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "process_vid_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "entropy_req": {
                "type": "long"
              },
              "device_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "entropy_res": {
                "type": "long"
              },
              "rid": {
                "type": "long"
              },
              "feed_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "inode": {
                "type": "long"
              },
              "msg_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lc_cid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "process_vid_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "level": {
                "type": "long"
              },
              "resource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resource_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lc_ctime": {
                "type": "date"
              },
              "device_group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "payload_req": {
                "type": "long"
              },
              "payload_res": {
                "type": "long"
              },
              "device_ip": {
                "type": "ip"
              },
              "entry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "obj_server": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device_ipv6": {
                "type": "ip"
              },
              "size": {
                "type": "long"
              },
              "event_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nwe_callback_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "word": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hcode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ubc_req": {
                "type": "long"
              },
              "session_split": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ubc_res": {
                "type": "long"
              },
              "header_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "parse_error": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "obj_val": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "messageid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dead": {
                "type": "long"
              },
              "medium": {
                "type": "long"
              },
              "msg_vid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "forward_ip": {
                "type": "ip"
              },
              "statement": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourcefile": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "feed_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "obj_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mcb_req": {
                "type": "long"
              },
              "mcb_res": {
                "type": "long"
              },
              "node_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "feed_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "audit_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "site": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mcbc_req": {
                "type": "long"
              },
              "device_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device_type_id": {
                "type": "long"
              },
              "device_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mcbc_res": {
                "type": "long"
              },
              "time": {
                "type": "date"
              },
              "did": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "forward_ipv6": {
                "type": "ip"
              }
            }
          },
          "counters": {
            "properties": {
              "dclass_r2_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_r2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_r1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_r3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_c2_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_counter": {
                "type": "long"
              },
              "dclass_r1_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_r3_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_c1": {
                "type": "long"
              },
              "dclass_c3": {
                "type": "long"
              },
              "dclass_c2": {
                "type": "long"
              },
              "dclass_c3_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dclass_c1_str": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "investigations": {
            "properties": {
              "ec_subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ec_activity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ec_theme": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_cat_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_vcat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "analysis_file": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "inv_context": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "inv_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "analysis_service": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_cat": {
                "type": "long"
              },
              "boc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eoc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ioc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ec_outcome": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "analysis_session": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "storage": {
            "properties": {
              "lun": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "disk_volume": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pwwn": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "network": {
            "properties": {
              "dns_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eth_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vlan_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remote_domain_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_code": {
                "type": "long"
              },
              "faddr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "network_service": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_ptr_record": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "zone_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "network_port": {
                "type": "long"
              },
              "packet_length": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eth_type": {
                "type": "long"
              },
              "host_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "port": {
                "type": "long"
              },
              "paddr": {
                "type": "ip"
              },
              "lhost": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fport": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_resp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "linterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ad_computer_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rpayload": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fhost": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ip_proto": {
                "type": "long"
              },
              "icmp_type": {
                "type": "long"
              },
              "laddr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "phost": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alias_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "zone_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_orig": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "origin": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_a_record": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vlan": {
                "type": "long"
              },
              "sinterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_opcode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "smask": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "addr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mask": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dmask": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dns_cname_record": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domain1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dinterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "netname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "protocol_detail": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "gateway": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "crypto": {
            "properties": {
              "cipher_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ike_cookie1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssl_ver_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ike_cookie2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ike": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "https_valid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "scheme": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_ca": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_error": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "peer_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "peer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_host_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_host_cat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_checksum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cipher_size_dst": {
                "type": "long"
              },
              "d_certauth": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cipher_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sig_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_keysize": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssl_ver_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_issuer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "crypto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_serial": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "https_insact": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "s_certauth": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert_common": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cipher_size_src": {
                "type": "long"
              },
              "cert_username": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "healthcare": {
            "properties": {
              "patient_fname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "patient_lname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "patient_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "patient_mname": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "endpoint": {
            "properties": {
              "registry_key": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "registry_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_state": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "file": {
            "properties": {
              "task_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attachment": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename_tmp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "binary": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_vendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "privilege": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_entropy": {
                "type": "double"
              },
              "directory_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "directory_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filesystem": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "web": {
            "properties": {
              "web_ref_domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_web_cookie": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reputation_num": {
                "type": "double"
              },
              "alias_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_web_referer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fqdn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_user_agent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_cookie": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_extension_tmp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_ref_page": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_page": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_ref_root": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "web_ref_query": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_url": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_web_method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urlroot": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urlpage": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remote_domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_asn_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_rpackets": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "identity": {
            "properties": {
              "service_account": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "firstname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "federated_idp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_sid_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ldap_response": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_dept": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dn_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "password": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ldap": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_sid_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "federated_sp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "accesses": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "owner": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "org": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "profile": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "middlename": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logon_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lastname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dn_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "auth_method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logon_type_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "realm": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ldap_query": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "wireless": {
            "properties": {
              "access_point": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "wlan_channel": {
                "type": "long"
              },
              "wlan_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "wlan_ssid": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "threat": {
            "properties": {
              "threat_source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threat_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threat_category": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "time": {
            "properties": {
              "effective_time": {
                "type": "date"
              },
              "date": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "year": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "timezone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stamp": {
                "type": "date"
              },
              "eventtime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "starttime": {
                "type": "date"
              },
              "process_time": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "gmtdate": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "datetime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "min": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hour": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_date": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_time2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "day": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "timestamp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_time1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "gmttime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_time_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_queue_time": {
                "type": "date"
              },
              "expire_time": {
                "type": "date"
              },
              "endtime": {
                "type": "date"
              },
              "recorded_time": {
                "type": "date"
              },
              "duration_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_time": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "month": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "duration_time": {
                "type": "double"
              },
              "tzone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_month": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_year": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_time": {
                "type": "date"
              },
              "expire_time_str": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "physical": {
            "properties": {
              "org_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "org_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "db": {
            "properties": {
              "transact_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "database": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "db_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "instance": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lread": {
                "type": "long"
              },
              "permissions": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pread": {
                "type": "long"
              },
              "index": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "db_pid": {
                "type": "long"
              },
              "table_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lwrite": {
                "type": "long"
              }
            }
          },
          "email": {
            "properties": {
              "email_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_from": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "misc": {
            "properties": {
              "cn_minpcktlen": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_if_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_av_secondary": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cefversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_bgpv4nxthop": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acl_table": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "doc_number": {
                "type": "long"
              },
              "fresult": {
                "type": "long"
              },
              "cn_maxpcktlen": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "userid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_max_ttl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_computer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mul_dst_pks": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comp_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfg_attr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "app_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_v6flowlabel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_engine_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "snmp_oid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cache": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfg_path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_ctr_dst_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "context_subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_num_static": {
                "type": "double"
              },
              "cs_modulescore": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcburb": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "node": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_croomtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_totbytsexp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "audit_object": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comp_sbytes": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sburb": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_ipv4dstpre": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_log_medium": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_warning": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_ipv4srcpre": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_v6nxthop": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_if_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rec_asp_num": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comp_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "object": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cpu_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_totflowexp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_ip_proto_ver": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_div": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_sampler_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_src_vlan": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "latitude": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "devvendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sec": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_suspicious": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cve": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cache_hit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nwwn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "found": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_template_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "job_num": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "audit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_v6optheaders": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cc_number": {
                "type": "long"
              },
              "vuln_ref": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_targetmodule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sigUUID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_engine_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "change_new": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_flowsampmode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_group_object": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sessiontype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msgid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_event_uuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcdom": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pool_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "url_fld": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_payload": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_bit9status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfg_obj": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_whois_server": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_opswatresult": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_analyzedby": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sig_id1": {
                "type": "long"
              },
              "id3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_msgid1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_msgid2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "workspace": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reference_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lifetime": {
                "type": "long"
              },
              "criticality": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "language": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_context": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "list_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_croomid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location_floor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tgtdom": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "virusname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alert_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client_ip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "obj_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group_object": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acl_op": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_members": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "edomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vsys": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "password_expire": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_av_primary": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "count": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "svcno": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_flowsampintv": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "finterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ruid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "recordnum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_lifetime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "spi_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_filetype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_sampalgo": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alarmname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msg_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alarm_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subcategory": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "search_text": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "expected_val": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_av_other": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_msgid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_template": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "distance": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "session": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "seqnum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "changes": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sig_id_str": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "admin": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "number1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "number2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lport": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "udb_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "spi_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "content": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_eth_src_ven": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_dst_tld": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "content_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "param": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "observed_val": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_dst_vlan": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "permgranted": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_totpcktsexp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_session_id1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "misc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ipkt": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_represult": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_control": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trigger_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "real_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ntype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pool_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bypass": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "listnum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reference_id2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reference_id1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "parent_node": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_sysuptime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "data_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_buddyname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hardware_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sig_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "gaddr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_acttimeout": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agent_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "owner_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_f_switch": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_buddyid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_inpermbyts": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_ip_next_hop": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_uid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "program": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_invalid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_num_next": {
                "type": "double"
              },
              "cn_inpermpckts": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_result1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_dst_tos": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "number": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_num": {
                "type": "double"
              },
              "tcp_flags": {
                "type": "long"
              },
              "policyUUID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_eth_dst_ven": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "context": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "edomaub": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_spackets": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_seqctr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_inacttimeout": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_loginname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mail_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comp_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "streams": {
                "type": "long"
              },
              "utcstamp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "index": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "priority": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_userid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mul_dst_byt": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "benchmark": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "password_chg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "im_username": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "prog_asp_num": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_10": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "content_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "system": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "phone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mplstoplabel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "netsessid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cmd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_registrant": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_flowsampid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "opkt": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vm_target": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "v_instafname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flags": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "param_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sensorname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ein_number": {
                "type": "long"
              },
              "cs_datecret": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sigcat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "library": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acl_pos": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tos": {
                "type": "long"
              },
              "risk_info": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_src_tos": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_bgpv6nxthop": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pgid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "orig_from": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_min_ttl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "param_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "serial_number": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "username_fld": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filter": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "disposition": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "autorun_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trigger_val": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_l_switch": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "connection_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ipspri": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "forensic_info": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_num_sand": {
                "type": "double"
              },
              "logid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sig_id": {
                "type": "long"
              },
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_fld": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "space1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_log_rid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "auditdata": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "checksum_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_registrar": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "num": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tgtdomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_agency_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_yararesult": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threshold": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sdomain_fld": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "facilityname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "space": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_sampint": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "second": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_6": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_7": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_8": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tbdstr1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_9": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tbdstr2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message_body": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "permwanted": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_4": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_5": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "linenum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mpls_lbl_1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcservice": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "jobname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "longitude": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_unixnanosecs": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "checksum_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ipscat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cpu": {
                "type": "long"
              },
              "cs_streams": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "spi": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "context_target": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "load_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rec_asp_device": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rec_library": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstburb": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_mplstoplabip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "misc_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sensor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "virt_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vpnid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mbug_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "change_attrib": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "obj_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_muligmptype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "link": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "clustermembers": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "error": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sql": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "process_id_val": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "payload_dst": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "checksum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "p_filter": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acl_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_modulesign": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_asn_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comments": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "euid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "OS": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_sourcemodule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "match": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "change_old": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "terminal": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "command": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fcatnum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "comp_rbytes": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "port_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_log_did": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location_mark": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "inout": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "payload_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy_waiver": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "snmp_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "risk_num_comm": {
                "type": "double"
              },
              "msgIdPart3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msgIdPart4": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_session_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cn_ipv4_ident": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_log": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cs_rpayload": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msgIdPart1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msgIdPart2": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "nats": {
        "properties": {
          "log": {
            "properties": {
              "msg": {
                "properties": {
                  "reply_to": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "max_messages": {
                    "type": "long"
                  },
                  "subject": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "bytes": {
                    "type": "long"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "error": {
                    "properties": {
                      "message": {
                        "norms": false,
                        "type": "text"
                      }
                    }
                  },
                  "queue_group": {
                    "norms": false,
                    "type": "text"
                  },
                  "sid": {
                    "type": "long"
                  }
                }
              },
              "client": {
                "properties": {
                  "id": {
                    "type": "long"
                  }
                }
              }
            }
          }
        }
      },
      "server": {
        "properties": {
          "nat": {
            "properties": {
              "port": {
                "type": "long"
              },
              "ip": {
                "type": "ip"
              }
            }
          },
          "address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_level_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ip": {
            "type": "ip"
          },
          "packets": {
            "type": "long"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "geo": {
            "properties": {
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "registered_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "as": {
            "properties": {
              "number": {
                "type": "long"
              },
              "organization": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    },
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "port": {
            "type": "long"
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "domain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "apache2": {
        "properties": {
          "access": {
            "properties": {
              "geoip": {
                "properties": {}
              },
              "user_agent": {
                "properties": {}
              }
            }
          },
          "error": {
            "properties": {}
          }
        }
      },
      "log": {
        "properties": {
          "original": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "file": {
            "properties": {
              "path": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "offset": {
            "type": "long"
          },
          "level": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "logger": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "origin": {
            "properties": {
              "file": {
                "properties": {
                  "line": {
                    "type": "long"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "function": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "flags": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "syslog": {
            "type": "object",
            "properties": {
              "severity": {
                "properties": {
                  "code": {
                    "type": "long"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "priority": {
                "type": "long"
              },
              "facility": {
                "properties": {
                  "code": {
                    "type": "long"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "source": {
            "properties": {
              "address": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "cef": {
        "properties": {
          "severity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extensions": {
            "properties": {
              "agentTranslatedZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flexDate1": {
                "type": "date"
              },
              "deviceCustomString3Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryObject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileSize": {
                "type": "long"
              },
              "agentZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceNtDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "loguid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryOutcome": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nat_rulenum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceMacAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFilePermission": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceProcessId": {
                "type": "long"
              },
              "sequencenum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationGeoLongitude": {
                "type": "double"
              },
              "agentTranslatedZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cp_app_risk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "requestContext": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceFacility": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceUserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationProcessName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomNumber1": {
                "type": "long"
              },
              "deviceDirection": {
                "type": "long"
              },
              "deviceCustomNumber3": {
                "type": "long"
              },
              "deviceCustomNumber2": {
                "type": "long"
              },
              "deviceFlexNumber1": {
                "type": "long"
              },
              "deviceFlexNumber2": {
                "type": "long"
              },
              "deviceCustomNumber2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceOutboundInterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceAddress": {
                "type": "ip"
              },
              "deviceCustomString5Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "requestUrl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceProcessName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationTranslatedZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryDeviceType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bytesOut": {
                "type": "long"
              },
              "destinationDnsDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceAddress": {
                "type": "ip"
              },
              "rule_action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationServiceName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "match_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileCreateTime": {
                "type": "date"
              },
              "deviceCustomIPv6Address3Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileModificationTime": {
                "type": "date"
              },
              "destinationTranslatedAddress": {
                "type": "ip"
              },
              "deviceCustomFloatingPoint3Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryDeviceGroup": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentMacAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "endTime": {
                "type": "date"
              },
              "sourceTranslatedZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentNtDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationMacAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nat_addtnl_rulenum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourcePort": {
                "type": "long"
              },
              "sourceZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceFlexNumber1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileHash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceReceiptTime": {
                "type": "date"
              },
              "destinationTranslatedZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomDate2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationTranslatedPort": {
                "type": "long"
              },
              "deviceTranslatedAddress": {
                "type": "ip"
              },
              "deviceInboundInterface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationUserPrivileges": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cp_severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomDate1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventId": {
                "type": "long"
              },
              "agentAddress": {
                "type": "ip"
              },
              "sourceDnsDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomDate2": {
                "type": "date"
              },
              "deviceCustomDate1": {
                "type": "date"
              },
              "originsicname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentHostName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "origin": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "requestMethod": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryTechnique": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentTimeZone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "layer_uuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "customerURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceExternalId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationUserName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationGeoLatitude": {
                "type": "double"
              },
              "agentDnsDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomNumber3Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceUserName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "externalId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentVersion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceDnsDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomIPv6Address4Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_uid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "type": "long"
              },
              "deviceCustomFloatingPoint4Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceServiceName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomIPv6Address1": {
                "type": "ip"
              },
              "deviceCustomIPv6Address4": {
                "type": "ip"
              },
              "requestCookies": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "applicationProtocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomIPv6Address3": {
                "type": "ip"
              },
              "deviceCustomIPv6Address2": {
                "type": "ip"
              },
              "destinationNtDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomFloatingPoint2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceAction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "inzone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categoryBehavior": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomIPv6Address2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileModificationTime": {
                "type": "date"
              },
              "deviceCustomFloatingPoint1": {
                "type": "double"
              },
              "deviceCustomFloatingPoint2": {
                "type": "double"
              },
              "oldFileHash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomFloatingPoint3": {
                "type": "double"
              },
              "sourceTranslatedAddress": {
                "type": "ip"
              },
              "deviceCustomFloatingPoint4": {
                "type": "double"
              },
              "fileCreateTime": {
                "type": "date"
              },
              "destinationPort": {
                "type": "long"
              },
              "sourceNtDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceHostName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceTranslatedZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationProcessId": {
                "type": "long"
              },
              "deviceCustomString6Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filePermission": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceTranslatedZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "transportProtocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "startTime": {
                "type": "date"
              },
              "deviceCustomNumber1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceProcessId": {
                "type": "long"
              },
              "flexString2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceTranslatedPort": {
                "type": "long"
              },
              "deviceCustomString1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString5": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationHostName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString4": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "devicePayloadId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString6": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceEventCategory": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceFlexNumber2Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventOutcome": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "logid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flexDate1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationAddress": {
                "type": "ip"
              },
              "sourceUserPrivileges": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceTranslatedZoneURI": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentReceiptTime": {
                "type": "date"
              },
              "layer_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceHostName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "categorySignificance": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sourceProcessName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flexString1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "requestClientApplication": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileSize": {
                "type": "long"
              },
              "sourceGeoLatitude": {
                "type": "double"
              },
              "agentTranslatedAddress": {
                "type": "ip"
              },
              "flexString2": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fileId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceMacAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agentId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "baseEventCount": {
                "type": "long"
              },
              "rawEvent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomIPv6Address1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "customerExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "managerReceiptTime": {
                "type": "date"
              },
              "Reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomFloatingPoint1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ifname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "service_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flexString1Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationUserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bytesIn": {
                "type": "long"
              },
              "sourceGeoLongitude": {
                "type": "double"
              },
              "filePath": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldFilePath": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "outzone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "parent_rule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceCustomString4Label": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationZoneExternalID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "deviceTimeZone": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "device": {
            "properties": {
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_class_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "syslog": {
        "properties": {
          "priority": {
            "type": "long"
          },
          "facility": {
            "type": "long"
          },
          "severity_label": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "facility_label": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "panw": {
        "properties": {
          "panos": {
            "properties": {
              "sequence_number": {
                "type": "long"
              },
              "file": {
                "properties": {
                  "hash": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "flow_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ruleset": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destination": {
                "properties": {
                  "nat": {
                    "properties": {
                      "port": {
                        "type": "long"
                      },
                      "ip": {
                        "type": "ip"
                      }
                    }
                  },
                  "zone": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "interface": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threat": {
                "properties": {
                  "resource": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "source": {
                "properties": {
                  "nat": {
                    "properties": {
                      "port": {
                        "type": "long"
                      },
                      "ip": {
                        "type": "ip"
                      }
                    }
                  },
                  "zone": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "interface": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "url": {
                "properties": {
                  "category": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "network": {
                "properties": {
                  "nat": {
                    "properties": {
                      "community_id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "pcap_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "o365": {
        "properties": {
          "audit": {
            "properties": {
              "GroupName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TargetUserOrGroupName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ItemType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserKey": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ImplicitShare": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "AlertEntityId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "EventData": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "IntraSystemId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Item": {
                "properties": {
                  "*": {
                    "type": "object",
                    "properties": {
                      "*": {
                        "type": "object"
                      }
                    }
                  }
                }
              },
              "OriginatingServer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "WebId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ClientAppId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MailboxOwnerUPN": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SharePointMetaData": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "CorrelationId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SessionId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MailboxOwnerMasterAccountSid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UniqueSharingId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Parameters": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "SourceFileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ExternalAccess": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SourceFileExtension": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ClientIP": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "EntityType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "InternalLogonType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "EventSource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "AppId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TargetUserOrGroupType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "CreationTime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "InterSystemsId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ApplicationId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Members": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "Site": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "OrganizationName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "AzureActiveDirectoryEventType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TeamGuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ActorIpAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ActorUserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ActorYammerUserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MailboxGuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TeamName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "OrganizationId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Operation": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ClientIPAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ExtendedProperties": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "AlertType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LogonUserSid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RecordType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ListId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ModifiedProperties": {
                "properties": {
                  "*": {
                    "properties": {
                      "*": {
                        "type": "object"
                      }
                    }
                  }
                }
              },
              "ClientInfoString": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SupportTicketId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LogonError": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserAgent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ItemName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "CustomUniqueId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "DataType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ListItemUniqueId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ActorContextId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MailboxOwnerSid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ApplicationDisplayName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ResultStatus": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ObjectId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Comments": {
                "norms": false,
                "type": "text"
              },
              "YammerNetworkId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LogonType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SiteUrl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "IncidentId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SensitiveInfoDetectionIsIncluded": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Workload": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SourceRelativeUrl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "AlertId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ExchangeMetaData": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "TargetContextId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ExceptionInfo": {
                "properties": {
                  "*": {
                    "type": "object"
                  }
                }
              },
              "PolicyId": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "geo": {
        "properties": {
          "continent_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "region_iso_code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "city_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "country_iso_code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "country_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "location": {
            "type": "geo_point"
          },
          "region_name": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "iis": {
        "properties": {
          "access": {
            "properties": {
              "site_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "server_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "geoip": {
                "properties": {}
              },
              "cookie": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sub_status": {
                "type": "long"
              },
              "win32_status": {
                "type": "long"
              },
              "user_agent": {
                "properties": {}
              }
            }
          },
          "error": {
            "properties": {
              "queue_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "geoip": {
                "properties": {}
              },
              "reason_phrase": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "file": {
        "properties": {
          "owner": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extension": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "gid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "drive_letter": {
            "ignore_above": 1,
            "type": "keyword"
          },
          "created": {
            "type": "date"
          },
          "mtime": {
            "type": "date"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "accessed": {
            "type": "date"
          },
          "directory": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "target_path": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "inode": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mode": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "path": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "size": {
            "type": "long"
          },
          "code_signature": {
            "properties": {
              "valid": {
                "type": "boolean"
              },
              "trusted": {
                "type": "boolean"
              },
              "subject_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "exists": {
                "type": "boolean"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "mime_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "pe": {
            "properties": {
              "file_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "original_file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "company": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ctime": {
            "type": "date"
          },
          "attributes": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "device": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hash": {
            "properties": {
              "sha1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha256": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha512": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "md5": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "group": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "vlan": {
        "properties": {
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "stream": {
        "ignore_above": 1024,
        "type": "keyword"
      },
      "event": {
        "properties": {
          "severity": {
            "type": "long"
          },
          "original": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "risk_score": {
            "type": "float"
          },
          "created": {
            "type": "date"
          },
          "kind": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "timezone": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "module": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "start": {
            "type": "date"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "url": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reference": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "duration": {
            "type": "long"
          },
          "sequence": {
            "type": "long"
          },
          "ingested": {
            "type": "date"
          },
          "risk_score_norm": {
            "type": "float"
          },
          "provider": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "action": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "end": {
            "type": "date"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dataset": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hash": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "outcome": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "cisco": {
        "properties": {
          "ftd": {
            "properties": {
              "threat_level": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_type": {
                "type": "short"
              },
              "mapped_source_port": {
                "type": "long"
              },
              "mapped_destination_ip": {
                "type": "ip"
              },
              "connection_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_destination_port": {
                "type": "long"
              },
              "dap_records": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_username": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "suffix": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threat_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_destination_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destination_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "security": {
                "type": "object"
              },
              "mapped_source_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_source_ip": {
                "type": "ip"
              },
              "connection_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_code": {
                "type": "short"
              },
              "destination_username": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "ios": {
            "properties": {
              "access_list": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "facility": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "asa": {
            "properties": {
              "mapped_source_port": {
                "type": "long"
              },
              "threat_level": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_type": {
                "type": "short"
              },
              "mapped_destination_ip": {
                "type": "ip"
              },
              "connection_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_destination_port": {
                "type": "long"
              },
              "dap_records": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_username": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "suffix": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threat_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_destination_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destination_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mapped_source_ip": {
                "type": "ip"
              },
              "mapped_source_host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "connection_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_code": {
                "type": "short"
              },
              "destination_username": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "mssql": {
        "properties": {
          "log": {
            "properties": {
              "origin": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "activemq": {
        "properties": {
          "caller": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "log": {
            "properties": {
              "stack_trace": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "audit": {
            "properties": {}
          },
          "thread": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "fileset": {
        "properties": {
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "rabbitmq": {
        "properties": {
          "log": {
            "properties": {
              "pid": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "url": {
        "properties": {
          "extension": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "original": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "scheme": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_level_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "query": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "path": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fragment": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "password": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "registered_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port": {
            "type": "long"
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "full": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "username": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "igmp": {
        "properties": {
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "forcepoint": {
        "properties": {
          "virus_id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "@timestamp": {
        "type": "date"
      },
      "organization": {
        "properties": {
          "name": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "fortinet": {
        "properties": {
          "file": {
            "properties": {
              "hash": {
                "properties": {
                  "crc32": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "firewall": {
            "properties": {
              "srcuuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "iaid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "infectedfilelevel": {
                "type": "long"
              },
              "remote": {
                "type": "ip"
              },
              "aptype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "translationid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "scanned": {
                "type": "long"
              },
              "domainfilterlist": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "portend": {
                "type": "long"
              },
              "vip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "opercountry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "probeproto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "profile": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "community": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ap": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "scantime": {
                "type": "long"
              },
              "devtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmptype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "setuprate": {
                "type": "long"
              },
              "size": {
                "type": "long"
              },
              "cert-type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "referralurl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urlfilterlist": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "assigned": {
                "type": "ip"
              },
              "phase2_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fortiguardresp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vapmode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "informationsource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldchannel": {
                "type": "long"
              },
              "virus": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "result": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldchassisid": {
                "type": "long"
              },
              "disklograte": {
                "type": "long"
              },
              "vulncat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "seq": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rssi": {
                "type": "long"
              },
              "vendorurl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "radioidclosest": {
                "type": "long"
              },
              "connection_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vwlservice": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policytype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "column": {
                "type": "long"
              },
              "countdns": {
                "type": "long"
              },
              "session_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "xauthuser": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shaperperipname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stage": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "quotamax": {
                "type": "long"
              },
              "exch": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "banword": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lease": {
                "type": "long"
              },
              "dstosversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "src_int": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shaperdroprcvdbyte": {
                "type": "long"
              },
              "banned_src": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "datarange": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cloudaction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldsn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ds": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acktime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "red": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "radioiddetected": {
                "type": "long"
              },
              "act": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countav": {
                "type": "long"
              },
              "signal": {
                "type": "long"
              },
              "wanoptapptype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfgattr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "count": {
                "type": "long"
              },
              "countdlp": {
                "type": "long"
              },
              "outintf": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "suspicious": {
                "type": "long"
              },
              "to_vcluster": {
                "type": "long"
              },
              "cfgobj": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "port": {
                "type": "long"
              },
              "exchange": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstcountry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urltype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "addrgrp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "snmeshparent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filefilter": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "apprisk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "apscan": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "analyticssubmit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "devcategory": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "incidentserialno": {
                "type": "long"
              },
              "alert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rate": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "scope": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssllocal": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "live": {
                "type": "long"
              },
              "configcountry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "conserve": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "switchproto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vpn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attackcontextid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcswversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "age": {
                "type": "long"
              },
              "vcluster": {
                "type": "long"
              },
              "addr_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domainctrlip": {
                "type": "ip"
              },
              "mgmtcnt": {
                "type": "long"
              },
              "channel": {
                "type": "long"
              },
              "dintf": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ha_group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "banned_rule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "license_limit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rawdata": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "quotaexceeded": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstdevtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "init": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vwpvlanid": {
                "type": "long"
              },
              "ip": {
                "type": "ip"
              },
              "invalidmac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dsthwvendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "clouduser": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vdname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vrf": {
                "type": "long"
              },
              "ruledata": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "field": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "appact": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cdrcontent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "certhash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sync_status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "analyticscksum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sndetected": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "server": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "poolname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authproto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "duid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reporttype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "netid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "quotaused": {
                "type": "long"
              },
              "epoch": {
                "type": "long"
              },
              "onwire": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "login": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "local": {
                "type": "ip"
              },
              "mac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tamac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstosname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sysuptime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "peer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "noise": {
                "type": "long"
              },
              "infected": {
                "type": "long"
              },
              "domainctrlauthtype": {
                "type": "long"
              },
              "trigger": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "iptype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shapingpolicyid": {
                "type": "long"
              },
              "acct_stat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countips": {
                "type": "long"
              },
              "wanout": {
                "type": "long"
              },
              "oldslot": {
                "type": "long"
              },
              "countemail": {
                "type": "long"
              },
              "eapoltype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "passedcount": {
                "type": "long"
              },
              "filtername": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "constraint": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attackid": {
                "type": "long"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pid": {
                "type": "long"
              },
              "mode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srccountry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reqtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "crscore": {
                "type": "long"
              },
              "newslot": {
                "type": "long"
              },
              "host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "limit": {
                "type": "long"
              },
              "srcinetsvc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "processtime": {
                "type": "long"
              },
              "osname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remotewtptime": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstfamily": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "transid": {
                "type": "long"
              },
              "ruletype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cpu": {
                "type": "long"
              },
              "freediskstorage": {
                "type": "long"
              },
              "vpntype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "spi": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "xauthgroup": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lowcount": {
                "type": "long"
              },
              "disk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "unit": {
                "type": "long"
              },
              "wanin": {
                "type": "long"
              },
              "used_for_type": {
                "type": "long"
              },
              "submodule": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sensor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "app-type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "crlevel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "slot": {
                "type": "long"
              },
              "domainfilteridx": {
                "type": "long"
              },
              "filtertype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total": {
                "type": "long"
              },
              "mem": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dlpextra": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countcifs": {
                "type": "long"
              },
              "crl": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domainctrlprotocoltype": {
                "type": "long"
              },
              "old_status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stamac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trace_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shaperdropsentbyte": {
                "type": "long"
              },
              "srcname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstdevcategory": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sentdelta": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sessionid": {
                "type": "long"
              },
              "fwserver_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "expiry": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "threattype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "module": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcserver": {
                "type": "long"
              },
              "filtercat": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "received": {
                "type": "long"
              },
              "fams_pause": {
                "type": "long"
              },
              "botnetip": {
                "type": "ip"
              },
              "fctuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "call_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "chassisid": {
                "type": "long"
              },
              "domainctrlusername": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cldobjid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vcluster_state": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "passwd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countweb": {
                "type": "long"
              },
              "alarmid": {
                "type": "long"
              },
              "old_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "activity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "highcount": {
                "type": "long"
              },
              "authserver": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "botnetdomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cookies": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ddnsserver": {
                "type": "ip"
              },
              "encryption": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "encrypt": {
                "type": "long"
              },
              "attack": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sscname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stitch": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lanin": {
                "type": "long"
              },
              "auditscore": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bandwidth": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "intf": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "portbegin": {
                "type": "long"
              },
              "detectionmethod": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rawdataid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sslaction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client_addr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "to": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfgpath": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstserver": {
                "type": "long"
              },
              "radioband": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "agent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "newchassisid": {
                "type": "long"
              },
              "applist": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vwlid": {
                "type": "long"
              },
              "ui": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "esptransform": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "masterdstmac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "keyword": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filehashsrc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "voip_proto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "auditid": {
                "type": "long"
              },
              "vulnid": {
                "type": "long"
              },
              "domainctrldomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "audittime": {
                "type": "long"
              },
              "fqdn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfgtxpower": {
                "type": "long"
              },
              "groupid": {
                "type": "long"
              },
              "frametype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "daemon": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "craction": {
                "type": "long"
              },
              "tunnelid": {
                "type": "long"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstinetsvc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "snclosest": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tunnelip": {
                "type": "ip"
              },
              "osversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countwaf": {
                "type": "long"
              },
              "desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lanout": {
                "type": "long"
              },
              "quotatype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srcintfrole": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "profiletype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fazlograte": {
                "type": "long"
              },
              "malform_desc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "admin": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmpid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subservice": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dst_int": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "meshmode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "channeltype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shapersentname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "criticalcount": {
                "type": "long"
              },
              "severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "green": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "receivedsignature": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "apsn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "opertxpower": {
                "type": "long"
              },
              "in_spi": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "expectedsignature": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dhcp_msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "time": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srchwversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "gateway": {
                "type": "ip"
              },
              "totalsession": {
                "type": "long"
              },
              "sslremote": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "initiator": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mpsk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstswversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "nf_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "virusid": {
                "type": "long"
              },
              "dsthwversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "profilegroup": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cfgtid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmpcode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countff": {
                "type": "long"
              },
              "eapolcnt": {
                "type": "long"
              },
              "fctemssn": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trandisp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vulnname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tunneltype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "identifier": {
                "type": "long"
              },
              "vap": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sync_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "newchannel": {
                "type": "long"
              },
              "message_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "centralnatid": {
                "type": "long"
              },
              "out_spi": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filteridx": {
                "type": "long"
              },
              "nextstat": {
                "type": "long"
              },
              "phone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "apstatus": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sensitivity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "carrier_ep": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ha-prio": {
                "type": "long"
              },
              "espauth": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "profile_vd": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rsso_key": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "manuf": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domainctrlauthstate": {
                "type": "long"
              },
              "cveid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "stacount": {
                "type": "long"
              },
              "countssh": {
                "type": "long"
              },
              "authgrp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countssl": {
                "type": "long"
              },
              "monitor-type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "from_vcluster": {
                "type": "long"
              },
              "monitor-name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "countapp": {
                "type": "long"
              },
              "domainctrlname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fsaverdict": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "msgproto": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "contentdisarmed": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstintfrole": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urlsource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "appid": {
                "type": "long"
              },
              "rcvddelta": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstunauthusersource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srchwvendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "date": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attackcontext": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ha_role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "used": {
                "type": "long"
              },
              "chgheaders": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "devintfname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "xid": {
                "type": "long"
              },
              "forwardedfor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mastersrcmac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shaperrcvdname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "qtypeval": {
                "type": "long"
              },
              "from": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "oldwprof": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "assignip": {
                "type": "ip"
              },
              "weakwepiv": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "docsource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "unauthusersource": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "kind": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vwlquality": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vcluster_member": {
                "type": "long"
              },
              "mtu": {
                "type": "long"
              },
              "handshake": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstuuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "line": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "urlfilteridx": {
                "type": "long"
              },
              "peer_notif": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vpntunnel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "serialno": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "security": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attachment": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cat": {
                "type": "long"
              },
              "checksum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "addr": {
                "type": "ip"
              },
              "utmaction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "process": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hbdn_reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "radioid": {
                "type": "long"
              },
              "mediumcount": {
                "type": "long"
              },
              "srcfamily": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "command": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "contenttype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "malform_data": {
                "type": "long"
              },
              "trueclntip": {
                "type": "ip"
              },
              "quarskip": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "serial": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shaperperipdropbyte": {
                "type": "long"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "adgroup": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "haproxy": {
        "properties": {
          "error_message": {
            "norms": false,
            "type": "text"
          },
          "tcp": {
            "properties": {
              "connection_waiting_time_ms": {
                "type": "long"
              }
            }
          },
          "server_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "geoip": {
            "properties": {}
          },
          "bind_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "total_waiting_time_ms": {
            "type": "long"
          },
          "termination_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "time_queue": {
            "type": "long"
          },
          "connection_wait_time_ms": {
            "type": "long"
          },
          "destination": {
            "properties": {}
          },
          "bytes_read": {
            "type": "long"
          },
          "source": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mode": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "backend_queue": {
            "type": "long"
          },
          "backend_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "http": {
            "properties": {
              "request": {
                "properties": {
                  "captured_cookie": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "raw_request_line": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "captured_headers": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "time_wait_ms": {
                    "type": "long"
                  },
                  "time_wait_without_data_ms": {
                    "type": "long"
                  }
                }
              },
              "response": {
                "properties": {
                  "captured_cookie": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "captured_headers": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "client": {
            "properties": {}
          },
          "frontend_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "server_queue": {
            "type": "long"
          },
          "time_backend_connect": {
            "type": "long"
          },
          "connections": {
            "properties": {
              "server": {
                "type": "long"
              },
              "retries": {
                "type": "long"
              },
              "active": {
                "type": "long"
              },
              "backend": {
                "type": "long"
              },
              "frontend": {
                "type": "long"
              }
            }
          }
        }
      },
      "okta": {
        "properties": {
          "severity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "request": {
            "properties": {
              "ip_chain": {
                "properties": {
                  "geographical_context": {
                    "properties": {
                      "country": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "city": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "state": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "postal_code": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "geolocation": {
                        "type": "geo_point"
                      }
                    }
                  },
                  "ip": {
                    "type": "ip"
                  },
                  "source": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "version": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "authentication_context": {
            "properties": {
              "credential_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authentication_provider": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "credential_provider": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authentication_step": {
                "type": "long"
              },
              "interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "external_session_id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "display_message": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "actor": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "display_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "alternate_id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "debug_context": {
            "properties": {
              "debug_data": {
                "properties": {
                  "device_fingerprint": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "threat_suspected": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "request_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "request_uri": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "url": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "event_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "client": {
            "properties": {
              "zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ip": {
                "type": "ip"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_agent": {
                "properties": {
                  "raw_user_agent": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "os": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "browser": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "transaction": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "security_context": {
            "properties": {
              "as": {
                "properties": {
                  "number": {
                    "type": "long"
                  },
                  "organization": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "isp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "is_proxy": {
                "type": "boolean"
              }
            }
          },
          "outcome": {
            "properties": {
              "result": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "reason": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "checkpoint": {
        "properties": {
          "sip_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sensor_mode": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "src_user_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_hosts_hour": {
            "type": "long"
          },
          "installed_products": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icmp": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "via": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_headers": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ftp_user": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_categories": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fw_message": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "specific_data_type_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "nat_rulenum": {
            "type": "long"
          },
          "voip_from_user_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_initial_access": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_id": {
            "type": "long"
          },
          "content_length": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_message_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_skipped_files_number": {
            "type": "long"
          },
          "extension_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_lateral_movement": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "rpc_prog": {
            "type": "long"
          },
          "dlp_repository_scanned_directories_number": {
            "type": "long"
          },
          "community": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reject_category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "int_end": {
            "type": "long"
          },
          "https_inspection_rule_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_results": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "bcc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scheme": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "confidence_level": {
            "type": "long"
          },
          "indicator_uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "http_host": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_packet_out_of_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "rule_action": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_word_list": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "referrer_parent_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "match_id": {
            "type": "long"
          },
          "internal_error": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dce-rpc_interface_uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "session_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "policy_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "diameter_msg_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fw_subproduct": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "unique_detected_week": {
            "type": "long"
          },
          "mirror_and_decrypt_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "calc_desc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "information": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_desc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "operation_number": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "nat_addtnl_rulenum": {
            "type": "long"
          },
          "proxy_user_dn": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_exfiltration": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extracted_file_verdict": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "delivery_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "malware_family": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_hosts_day": {
            "type": "long"
          },
          "failure_impact": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_data_type_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "anti_virus_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cluster_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mime_from": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "https_inspection_action": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "attack_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scrub_activity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_file_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "capture_uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "site_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "auth_method": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_control_analysis": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_scanned_files_number": {
            "type": "long"
          },
          "scrubbed_content": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_fingerprint_files_number": {
            "type": "long"
          },
          "email_subject": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_media_ipp": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "peer_gateway": {
            "type": "ip"
          },
          "app_sig_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "match_fk": {
            "type": "long"
          },
          "layer_uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "duration": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "spyware_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_call_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "next_scheduled_scan_date": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "connection_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "alert": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scope": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_media_codec": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "chunk_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "matched_file": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "arrival_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reply_status": {
            "type": "long"
          },
          "encryption_failure": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icap_server_service": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "message": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ticket_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_spool_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "additional_rdata": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "parent_process_username": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "referrer": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_to_user_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "observable_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "esod_rule_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "broker_publisher": {
            "type": "ip"
          },
          "email_control": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mime_to": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_package": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_mail": {
            "type": "long"
          },
          "audit_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "authorization": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_reg_user_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_queue_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "developer_certificate_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "limit_applied": {
            "type": "long"
          },
          "context_num": {
            "type": "long"
          },
          "media_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "esod_associated_policies": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "type": "long"
          },
          "process_username": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scrub_total_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cookie": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "impacted_files": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "indicator_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icap_service_id": {
            "type": "long"
          },
          "certificate_resource": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icap_server_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_file_hash": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "additional_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "verdict": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_execution": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "source_object": {
            "type": "long"
          },
          "next_hop_ip": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sctp_association_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "short_desc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ike_ids": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sys_message": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sub_policy_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ip_option": {
            "type": "long"
          },
          "scrub_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "first_hit_time": {
            "type": "long"
          },
          "c_bytes": {
            "type": "long"
          },
          "incident_extension": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extracted_file_hash": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "unique_detected_day": {
            "type": "long"
          },
          "file_direction": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "action_reason": {
            "type": "long"
          },
          "nat46": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "objecttype": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "detected_on": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "proxy_src_ip": {
            "type": "ip"
          },
          "log_id": {
            "type": "long"
          },
          "dlp_repository_total_size": {
            "type": "long"
          },
          "similar_hashes": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_queue_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "end_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "trusted_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_file_verdict": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "failure_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "suppressed_logs": {
            "type": "long"
          },
          "certificate_validation": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_method": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "url": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "machine": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_incoming": {
            "type": "long"
          },
          "logid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sig_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "connectivity_level": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "spyware_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "monitor_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_incident_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "limit_requested": {
            "type": "long"
          },
          "app_repackaged": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "session_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_reg_period": {
            "type": "long"
          },
          "dlp_fingerprint_short_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_result": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_root_path": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_call_dir": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "registered_ip-phones": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "question_rdata": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_content": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "virus_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "layer_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "last_rematch_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_command_and_control": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "destination_object": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scv_user": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "word_list": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "data_type_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "parent_file_hash": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "http_location": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "inspection_settings_log": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "emulated_on": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "nat_exhausted_pool": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_fingerprint_long_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "drops_amount": {
            "type": "long"
          },
          "esod_scan_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "elapsed": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "end_user_firewall_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "content_disposition": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_exp": {
            "type": "long"
          },
          "mitre_discovery": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dst_country": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_sid_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cp_message": {
            "type": "long"
          },
          "indicator_reference": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "long_desc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "inspection_profile": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "parent_rule": {
            "type": "long"
          },
          "conns_amount": {
            "type": "long"
          },
          "esod_access_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "observable_comment": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "diameter_app_ID": {
            "type": "long"
          },
          "dropped_total": {
            "type": "long"
          },
          "http_server": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tls_server_host_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "properties": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_direction": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_transint": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "special_properties": {
            "type": "long"
          },
          "referrer_self_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_directories_number": {
            "type": "long"
          },
          "allocated_ports": {
            "type": "long"
          },
          "icmp_code": {
            "type": "long"
          },
          "reject_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extracted_file_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "diameter_cmd_code": {
            "type": "long"
          },
          "voip_reg_server": {
            "type": "ip"
          },
          "inspection_item": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_persistence": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scan_hosts_week": {
            "type": "long"
          },
          "similar_communication": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "protection_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "files_names": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "number_of_errors": {
            "type": "long"
          },
          "host_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_reg_ipp": {
            "type": "long"
          },
          "original_queue_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "links_num": {
            "type": "long"
          },
          "mitre_credential_access": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_reached_directories_number": {
            "type": "long"
          },
          "authority_rdata": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_reg_int": {
            "type": "long"
          },
          "voip_config": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "source_os": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_duration": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "unique_detected_hour": {
            "type": "long"
          },
          "client_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dst_phone_number": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scrub_download_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "msgid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "message_size": {
            "type": "long"
          },
          "similar_strings": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ppp": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dstkeyid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_related_incident_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "drop_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "operation": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "indicator_description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "performance_impact": {
            "type": "long"
          },
          "app_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "attachments_num": {
            "type": "long"
          },
          "rulebase_id": {
            "type": "long"
          },
          "client_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_end_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_additional_action": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "frequency": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "parent_file_uid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "needs_browse_time": {
            "type": "long"
          },
          "src_phone_number": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "source_interface": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_call_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cookieI": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fs-proto": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "query": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "securexl_message": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "vpn_feature_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "duplicate": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sync": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cookieR": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "message_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "similiar_iocs": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "matched_file_text_segments": {
            "type": "long"
          },
          "matched_file_percentage": {
            "type": "long"
          },
          "packet_capture_unique_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "policy_mgmt": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "vendor_list": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "desc": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "event_count": {
            "type": "long"
          },
          "description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "rule": {
            "type": "long"
          },
          "sctp_error": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "speed": {
            "type": "long"
          },
          "voip_reject_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_log_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "content_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_archive_file_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_data_type_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "precise_error": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_reason_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "summary": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "severity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "https_inspection_rule_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "total_attachments": {
            "type": "long"
          },
          "file_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_template_score": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "protection_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_recipients_num": {
            "type": "long"
          },
          "risk": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_recipients": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "client_type_os": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_call_term_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "analyzed_on": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "inspection_category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "answer_rdata": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "subs_exp": {
            "type": "date"
          },
          "extracted_file_names": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "objecttable": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_flags": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "web_server_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "packet_amount": {
            "type": "long"
          },
          "cgnet": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "proxy_machine_name": {
            "type": "long"
          },
          "hide_ip": {
            "type": "ip"
          },
          "watermark": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "subscriber": {
            "type": "ip"
          },
          "method": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "spyware_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "rematch_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "termination_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "esod_rule_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_scanned_total_size": {
            "type": "long"
          },
          "parent_file_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_scan_progress": {
            "type": "long"
          },
          "integrity_av_invoke_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icap_more_info": {
            "type": "long"
          },
          "mitre_defense_evasion": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "log_delay": {
            "type": "long"
          },
          "dlp_action_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icmp_type": {
            "type": "long"
          },
          "methods": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "content_risk": {
            "type": "long"
          },
          "dns_query": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "isp_link": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_est_codec": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "capacity": {
            "type": "long"
          },
          "blade_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "invalid_file_size": {
            "type": "long"
          },
          "peer_ip_probing_status_update": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_file_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_severity": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cvpn_category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "origin_sic_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "esod_noncompliance_reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_attach_sz": {
            "type": "long"
          },
          "dlp_relevant_data_types": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_attach_action_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "extracted_file_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_session_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ike": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "esod_rule_action": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "protection_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "proxy_user_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "remediated_files": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "triggered_by": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "link_probing_status_update": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "src_user_dn": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "status_update": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dst_user_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hit": {
            "type": "long"
          },
          "protocol": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "identity_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email_spam_category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_impact": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ports_usage": {
            "type": "long"
          },
          "dlp_subject": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "expire_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "browse_time": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "src_country": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "te_verdict_determined_by": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_risk": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "observable_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "appi_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "voip_media_port": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "interface_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "last_hit_time": {
            "type": "long"
          },
          "mitre_collection": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_files_number": {
            "type": "long"
          },
          "additional_ip": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "app_properties": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "scv_message_info": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_watermark_profile": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "client_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "https_validation": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user_agent": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "int_start": {
            "type": "long"
          },
          "connectivity_state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "srckeyid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "outgoing_url": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "cvpn_resource": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dropped_outgoing": {
            "type": "long"
          },
          "dlp_rule_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sub_policy_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "update_status": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "peer_ip": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_not_scanned_directories_percentage": {
            "type": "long"
          },
          "scan_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mitre_privilege_escalation": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dlp_repository_unreachable_directories_number": {
            "type": "long"
          },
          "dlp_violation_description": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "kubernetes": {
        "properties": {
          "container": {
            "properties": {
              "image": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "node": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "pod": {
            "properties": {
              "uid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "statefulset": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "namespace": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "annotations": {
            "properties": {
              "*": {
                "type": "object"
              }
            }
          },
          "replicaset": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "labels": {
            "properties": {
              "*": {
                "type": "object"
              }
            }
          },
          "deployment": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "agent": {
        "properties": {
          "hostname": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ephemeral_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "source": {
        "properties": {
          "nat": {
            "properties": {
              "port": {
                "type": "long"
              },
              "ip": {
                "type": "ip"
              }
            }
          },
          "address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_level_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ip": {
            "type": "ip"
          },
          "packets": {
            "type": "long"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "geo": {
            "properties": {
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "as": {
            "properties": {
              "number": {
                "type": "long"
              },
              "organization": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    },
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "registered_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port": {
            "type": "long"
          },
          "bytes": {
            "type": "long"
          },
          "service": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "domain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "microsoft": {
        "properties": {
          "defender_atp": {
            "properties": {
              "investigationId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "evidence": {
                "properties": {
                  "aadUserId": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "accountName": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "entityType": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "domainName": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "ipAddress": {
                    "type": "ip"
                  },
                  "userPrincipalName": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "resolvedTime": {
                "type": "date"
              },
              "threatFamilyName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "determination": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rbacGroupName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "incidentId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "investigationState": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "classification": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "assignedTo": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "lastUpdateTime": {
                "type": "date"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "cloud": {
        "properties": {
          "image": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "availability_zone": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "instance": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "provider": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "machine": {
            "properties": {
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "project": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "region": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "account": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "logstash": {
        "properties": {
          "log": {
            "properties": {
              "module": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pipeline_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_event": {
                "type": "object"
              },
              "thread": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              }
            }
          },
          "slowlog": {
            "properties": {
              "took_in_millis": {
                "type": "long"
              },
              "plugin_params": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "module": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "plugin_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "plugin_params_object": {
                "type": "object"
              },
              "thread": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "event": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "plugin_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "netflow": {
        "properties": {
          "information_element_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "next_header_ipv6": {
            "type": "short"
          },
          "class_id": {
            "type": "long"
          },
          "min_flow_start_milliseconds": {
            "type": "date"
          },
          "nat_event": {
            "type": "short"
          },
          "application_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "icmp_code_ipv6": {
            "type": "short"
          },
          "icmp_code_ipv4": {
            "type": "short"
          },
          "sampling_flow_spacing": {
            "type": "long"
          },
          "tcp_ack_total_count": {
            "type": "long"
          },
          "post_ip_diff_serv_code_point": {
            "type": "short"
          },
          "not_sent_packet_total_count": {
            "type": "long"
          },
          "mpls_label_stack_section10": {
            "type": "short"
          },
          "dropped_packet_total_count": {
            "type": "long"
          },
          "flow_start_sys_up_time": {
            "type": "long"
          },
          "mpls_label_stack_section5": {
            "type": "short"
          },
          "post_octet_delta_count": {
            "type": "long"
          },
          "mpls_label_stack_section4": {
            "type": "short"
          },
          "pseudo_wire_control_word": {
            "type": "long"
          },
          "octet_delta_count": {
            "type": "long"
          },
          "mpls_label_stack_section3": {
            "type": "short"
          },
          "dropped_octet_total_count": {
            "type": "long"
          },
          "mpls_label_stack_section2": {
            "type": "short"
          },
          "initiator_octets": {
            "type": "long"
          },
          "sampler_id": {
            "type": "short"
          },
          "mpls_label_stack_section9": {
            "type": "short"
          },
          "mpls_label_stack_section8": {
            "type": "short"
          },
          "mpls_label_stack_section7": {
            "type": "short"
          },
          "metering_process_id": {
            "type": "long"
          },
          "mpls_label_stack_section6": {
            "type": "short"
          },
          "address_pool_low_threshold": {
            "type": "long"
          },
          "source_ipv6_prefix": {
            "type": "ip"
          },
          "sta_ipv4_address": {
            "type": "ip"
          },
          "connection_sum_duration_seconds": {
            "type": "long"
          },
          "mib_module_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "http_reason_phrase": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mobile_msisdn": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mib_object_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "confidence_level": {
            "type": "double"
          },
          "hash_ip_payload_offset": {
            "type": "long"
          },
          "ignored_packet_total_count": {
            "type": "long"
          },
          "min_flow_start_nanoseconds": {
            "type": "date"
          },
          "tcp_options": {
            "type": "long"
          },
          "virtual_station_interface_id": {
            "type": "short"
          },
          "http_user_agent": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "post_ip_precedence": {
            "type": "short"
          },
          "sampling_size": {
            "type": "long"
          },
          "flow_sampling_time_spacing": {
            "type": "long"
          },
          "ip_version": {
            "type": "short"
          },
          "tcp_window_scale": {
            "type": "long"
          },
          "data_records_reliability": {
            "type": "boolean"
          },
          "ip_total_length": {
            "type": "long"
          },
          "post_mcast_octet_delta_count": {
            "type": "long"
          },
          "src_traffic_index": {
            "type": "long"
          },
          "ingress_physical_interface": {
            "type": "long"
          },
          "layer2_octet_total_sum_of_squares": {
            "type": "long"
          },
          "address_port_mapping_per_user_high_threshold": {
            "type": "long"
          },
          "sampling_time_interval": {
            "type": "long"
          },
          "ip_next_hop_ipv6_address": {
            "type": "ip"
          },
          "http_request_host": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "sampling_interval": {
            "type": "long"
          },
          "session_scope": {
            "type": "short"
          },
          "vr_fname": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mpls_label_stack_depth": {
            "type": "long"
          },
          "sampling_flow_interval": {
            "type": "long"
          },
          "initiator_packets": {
            "type": "long"
          },
          "post_nat_destination_ipv6_address": {
            "type": "ip"
          },
          "destination_transport_port": {
            "type": "long"
          },
          "vpn_identifier": {
            "type": "short"
          },
          "tcp_fin_total_count": {
            "type": "long"
          },
          "distinct_count_of_destination_ip_address": {
            "type": "long"
          },
          "source_transport_ports_limit": {
            "type": "long"
          },
          "destination_ipv4_prefix": {
            "type": "ip"
          },
          "original_flows_completed": {
            "type": "long"
          },
          "nat_pool_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "total_length_ipv4": {
            "type": "long"
          },
          "data_link_frame_type": {
            "type": "long"
          },
          "post_ip_class_of_service": {
            "type": "short"
          },
          "nat_instance_id": {
            "type": "long"
          },
          "sampling_time_space": {
            "type": "long"
          },
          "application_category_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ignored_layer2_frame_total_count": {
            "type": "long"
          },
          "port_range_step_size": {
            "type": "long"
          },
          "mib_capture_time_semantics": {
            "type": "short"
          },
          "sampling_packet_interval": {
            "type": "long"
          },
          "post_mcast_packet_delta_count": {
            "type": "long"
          },
          "selector_id": {
            "type": "long"
          },
          "ipv6_extension_headers": {
            "type": "long"
          },
          "dropped_layer2_octet_total_count": {
            "type": "long"
          },
          "not_sent_flow_total_count": {
            "type": "long"
          },
          "mib_object_value_ip_address": {
            "type": "ip"
          },
          "dot1q_customer_vlan_id": {
            "type": "long"
          },
          "tcp_urg_total_count": {
            "type": "long"
          },
          "mpls_top_label_type": {
            "type": "short"
          },
          "rtp_sequence_number": {
            "type": "long"
          },
          "section_exported_octets": {
            "type": "long"
          },
          "dst_traffic_index": {
            "type": "long"
          },
          "flow_duration_microseconds": {
            "type": "long"
          },
          "post_octet_total_count": {
            "type": "long"
          },
          "tcp_header_length": {
            "type": "short"
          },
          "protocol_identifier": {
            "type": "short"
          },
          "mib_object_value_unsigned": {
            "type": "long"
          },
          "metro_evc_type": {
            "type": "short"
          },
          "mpls_label_stack_section": {
            "type": "short"
          },
          "udp_destination_port": {
            "type": "long"
          },
          "wlan_ssid": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "max_fragments_pending_reassembly": {
            "type": "long"
          },
          "collector_ipv4_address": {
            "type": "ip"
          },
          "internal_address_realm": {
            "type": "short"
          },
          "flow_start_delta_microseconds": {
            "type": "long"
          },
          "information_element_range_begin": {
            "type": "long"
          },
          "payload_length_ipv6": {
            "type": "long"
          },
          "information_element_units": {
            "type": "long"
          },
          "ingress_interface": {
            "type": "long"
          },
          "observation_domain_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mpls_top_label_ipv4_address": {
            "type": "ip"
          },
          "max_session_entries": {
            "type": "long"
          },
          "tcp_window_size": {
            "type": "long"
          },
          "biflow_direction": {
            "type": "short"
          },
          "post_nat_destination_ipv4_address": {
            "type": "ip"
          },
          "information_element_id": {
            "type": "long"
          },
          "bgp_source_as_number": {
            "type": "long"
          },
          "exporter_certificate": {
            "type": "short"
          },
          "sampler_mode": {
            "type": "short"
          },
          "sta_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "flow_selected_octet_delta_count": {
            "type": "long"
          },
          "dropped_packet_delta_count": {
            "type": "long"
          },
          "nat_pool_id": {
            "type": "long"
          },
          "mpls_top_label_stack_section": {
            "type": "short"
          },
          "source_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ethernet_type": {
            "type": "long"
          },
          "multicast_replication_factor": {
            "type": "long"
          },
          "lower_ci_limit": {
            "type": "double"
          },
          "anonymization_technique": {
            "type": "long"
          },
          "destination_ipv6_prefix_length": {
            "type": "short"
          },
          "application_id": {
            "type": "short"
          },
          "transport_packet_delta_count": {
            "type": "long"
          },
          "original_exporter_ipv6_address": {
            "type": "ip"
          },
          "destination_ipv4_address": {
            "type": "ip"
          },
          "observation_domain_id": {
            "type": "long"
          },
          "mpls_label_stack_length": {
            "type": "long"
          },
          "digest_hash_value": {
            "type": "long"
          },
          "port_id": {
            "type": "long"
          },
          "post_layer2_octet_delta_count": {
            "type": "long"
          },
          "exporter_ipv4_address": {
            "type": "ip"
          },
          "dot1q_vlan_id": {
            "type": "long"
          },
          "hash_flow_domain": {
            "type": "long"
          },
          "external_address_realm": {
            "type": "short"
          },
          "data_link_frame_section": {
            "type": "short"
          },
          "egress_vrfid": {
            "type": "long"
          },
          "ip_diff_serv_code_point": {
            "type": "short"
          },
          "exported_flow_record_total_count": {
            "type": "long"
          },
          "original_flows_present": {
            "type": "long"
          },
          "application_description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "opaque_octets": {
            "type": "short"
          },
          "selector_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "information_element_semantics": {
            "type": "short"
          },
          "export_interface": {
            "type": "long"
          },
          "post_source_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_rst_total_count": {
            "type": "long"
          },
          "hash_ip_payload_size": {
            "type": "long"
          },
          "octet_total_sum_of_squares": {
            "type": "long"
          },
          "distinct_count_of_destination_ipv6_address": {
            "type": "long"
          },
          "classification_engine_id": {
            "type": "short"
          },
          "selector_id_total_pkts_observed": {
            "type": "long"
          },
          "information_element_description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "selector_id_total_flows_observed": {
            "type": "long"
          },
          "intermediate_process_id": {
            "type": "long"
          },
          "flow_end_delta_microseconds": {
            "type": "long"
          },
          "post_mcast_octet_total_count": {
            "type": "long"
          },
          "flow_selector_algorithm": {
            "type": "long"
          },
          "delta_flow_count": {
            "type": "long"
          },
          "original_flows_initiated": {
            "type": "long"
          },
          "ingress_vrfid": {
            "type": "long"
          },
          "virtual_station_uuid": {
            "type": "short"
          },
          "gre_key": {
            "type": "long"
          },
          "fragment_offset": {
            "type": "long"
          },
          "tcp_source_port": {
            "type": "long"
          },
          "flow_end_seconds": {
            "type": "date"
          },
          "ipv4_ihl": {
            "type": "short"
          },
          "dot1q_priority": {
            "type": "short"
          },
          "source_ipv6_prefix_length": {
            "type": "short"
          },
          "max_entries_per_user": {
            "type": "long"
          },
          "post_destination_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "value_distribution_method": {
            "type": "short"
          },
          "mib_object_value_oid": {
            "type": "short"
          },
          "observed_flow_total_count": {
            "type": "long"
          },
          "mib_object_identifier": {
            "type": "short"
          },
          "post_nat_source_ipv4_address": {
            "type": "ip"
          },
          "mib_object_value_gauge": {
            "type": "long"
          },
          "udp_source_port": {
            "type": "long"
          },
          "not_sent_layer2_octet_total_count": {
            "type": "long"
          },
          "hash_selected_range_max": {
            "type": "long"
          },
          "post_vlan_id": {
            "type": "long"
          },
          "packet_delta_count": {
            "type": "long"
          },
          "ipv4_router_sc": {
            "type": "ip"
          },
          "layer2_frame_total_count": {
            "type": "long"
          },
          "egress_interface_type": {
            "type": "long"
          },
          "bgp_next_hop_ipv4_address": {
            "type": "ip"
          },
          "sampler_random_interval": {
            "type": "long"
          },
          "dot1q_customer_dei": {
            "type": "boolean"
          },
          "layer2packet_section_offset": {
            "type": "long"
          },
          "post_packet_delta_count": {
            "type": "long"
          },
          "source_ipv4_prefix_length": {
            "type": "short"
          },
          "sampling_probability": {
            "type": "double"
          },
          "destination_ipv4_prefix_length": {
            "type": "short"
          },
          "upper_ci_limit": {
            "type": "double"
          },
          "dot1q_service_instance_id": {
            "type": "long"
          },
          "egress_interface": {
            "type": "long"
          },
          "observation_point_id": {
            "type": "long"
          },
          "tcp_urgent_pointer": {
            "type": "long"
          },
          "source_ipv6_address": {
            "type": "ip"
          },
          "bgp_prev_adjacent_as_number": {
            "type": "long"
          },
          "max_flow_end_microseconds": {
            "type": "date"
          },
          "export_sctp_stream_id": {
            "type": "long"
          },
          "selection_sequence_id": {
            "type": "long"
          },
          "tcp_acknowledgement_number": {
            "type": "long"
          },
          "encrypted_technology": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "selector_id_total_flows_selected": {
            "type": "long"
          },
          "mpls_top_label_prefix_length": {
            "type": "short"
          },
          "max_flow_end_seconds": {
            "type": "date"
          },
          "sampler_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "octet_delta_sum_of_squares": {
            "type": "long"
          },
          "observation_time_seconds": {
            "type": "date"
          },
          "sampling_population": {
            "type": "long"
          },
          "tcp_sequence_number": {
            "type": "long"
          },
          "min_flow_start_seconds": {
            "type": "date"
          },
          "monitoring_interval_end_milli_seconds": {
            "type": "date"
          },
          "flow_start_milliseconds": {
            "type": "date"
          },
          "pseudo_wire_destination_ipv4_address": {
            "type": "ip"
          },
          "minimum_ttl": {
            "type": "short"
          },
          "source_ipv4_prefix": {
            "type": "ip"
          },
          "wlan_channel_id": {
            "type": "short"
          },
          "distinct_count_of_source_ipv6_address": {
            "type": "long"
          },
          "post_dot1q_customer_vlan_id": {
            "type": "long"
          },
          "global_address_mapping_high_threshold": {
            "type": "long"
          },
          "new_connection_delta_count": {
            "type": "long"
          },
          "flow_sampling_time_interval": {
            "type": "long"
          },
          "mib_object_value_time_ticks": {
            "type": "long"
          },
          "nat_threshold_event": {
            "type": "long"
          },
          "ingress_interface_type": {
            "type": "long"
          },
          "icmp_type_code_ipv4": {
            "type": "long"
          },
          "post_layer2_octet_total_count": {
            "type": "long"
          },
          "mib_object_value_integer": {
            "type": "long"
          },
          "icmp_type_code_ipv6": {
            "type": "long"
          },
          "bgp_destination_as_number": {
            "type": "long"
          },
          "http_request_target": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "bgp_next_hop_ipv6_address": {
            "type": "ip"
          },
          "forwarding_status": {
            "type": "short"
          },
          "mib_context_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "information_element_index": {
            "type": "long"
          },
          "mpls_top_label_ipv6_address": {
            "type": "ip"
          },
          "fragment_identification": {
            "type": "long"
          },
          "user_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port_range_num_ports": {
            "type": "long"
          },
          "hash_selected_range_min": {
            "type": "long"
          },
          "exporter": {
            "properties": {
              "uptime_millis": {
                "type": "long"
              },
              "address": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_id": {
                "type": "long"
              },
              "version": {
                "type": "long"
              },
              "timestamp": {
                "type": "date"
              }
            }
          },
          "hash_output_range_min": {
            "type": "long"
          },
          "http_content_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "selector_algorithm": {
            "type": "long"
          },
          "address_port_mapping_high_threshold": {
            "type": "long"
          },
          "flow_start_seconds": {
            "type": "date"
          },
          "nat_originating_address_realm": {
            "type": "short"
          },
          "mobile_imsi": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "tcp_destination_port": {
            "type": "long"
          },
          "application_sub_category_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "class_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "responder_octets": {
            "type": "long"
          },
          "not_sent_octet_total_count": {
            "type": "long"
          },
          "layer2_octet_delta_count": {
            "type": "long"
          },
          "information_element_data_type": {
            "type": "short"
          },
          "flow_start_nanoseconds": {
            "type": "date"
          },
          "hash_initialiser_value": {
            "type": "long"
          },
          "bgp_validity_state": {
            "type": "short"
          },
          "engine_type": {
            "type": "short"
          },
          "flow_direction": {
            "type": "short"
          },
          "dot1q_customer_source_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "wtp_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mpls_payload_length": {
            "type": "long"
          },
          "template_id": {
            "type": "long"
          },
          "dot1q_customer_destination_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "pseudo_wire_type": {
            "type": "long"
          },
          "interface_description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "pseudo_wire_id": {
            "type": "long"
          },
          "vlan_id": {
            "type": "long"
          },
          "hash_digest_output": {
            "type": "boolean"
          },
          "responder_packets": {
            "type": "long"
          },
          "ethernet_payload_length": {
            "type": "long"
          },
          "collector_certificate": {
            "type": "short"
          },
          "tcp_control_bits": {
            "type": "long"
          },
          "mpls_payload_packet_section": {
            "type": "short"
          },
          "anonymization_flags": {
            "type": "long"
          },
          "ingress_unicast_packet_total_count": {
            "type": "long"
          },
          "address_pool_high_threshold": {
            "type": "long"
          },
          "information_element_range_end": {
            "type": "long"
          },
          "observation_point_type": {
            "type": "short"
          },
          "ip_payload_packet_section": {
            "type": "short"
          },
          "http_status_code": {
            "type": "long"
          },
          "bgp_next_adjacent_as_number": {
            "type": "long"
          },
          "dropped_layer2_octet_delta_count": {
            "type": "long"
          },
          "destination_ipv6_prefix": {
            "type": "ip"
          },
          "common_properties_id": {
            "type": "long"
          },
          "maximum_ip_total_length": {
            "type": "long"
          },
          "ip_class_of_service": {
            "type": "short"
          },
          "exporter_ipv6_address": {
            "type": "ip"
          },
          "rfc3550_jitter_nanoseconds": {
            "type": "long"
          },
          "distinct_count_of_source_ip_address": {
            "type": "long"
          },
          "http_request_method": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "original_observation_domain_id": {
            "type": "long"
          },
          "is_multicast": {
            "type": "short"
          },
          "mib_object_value_counter": {
            "type": "long"
          },
          "mib_object_value_bits": {
            "type": "short"
          },
          "ip_header_packet_section": {
            "type": "short"
          },
          "post_mcast_layer2_octet_delta_count": {
            "type": "long"
          },
          "tunnel_technology": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ingress_multicast_packet_total_count": {
            "type": "long"
          },
          "flow_idle_timeout": {
            "type": "long"
          },
          "max_export_seconds": {
            "type": "date"
          },
          "minimum_ip_total_length": {
            "type": "long"
          },
          "exported_message_total_count": {
            "type": "long"
          },
          "flow_end_nanoseconds": {
            "type": "date"
          },
          "layer2_segment_id": {
            "type": "long"
          },
          "ip_next_hop_ipv4_address": {
            "type": "ip"
          },
          "post_mcast_layer2_octet_total_count": {
            "type": "long"
          },
          "egress_physical_interface": {
            "type": "long"
          },
          "tcp_psh_total_count": {
            "type": "long"
          },
          "mib_index_indicator": {
            "type": "long"
          },
          "nat_type": {
            "type": "short"
          },
          "udp_message_length": {
            "type": "long"
          },
          "monitoring_interval_start_milli_seconds": {
            "type": "date"
          },
          "layer2packet_section_size": {
            "type": "long"
          },
          "port_range_start": {
            "type": "long"
          },
          "exported_octet_total_count": {
            "type": "long"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "source_ipv4_address": {
            "type": "ip"
          },
          "post_napt_source_transport_port": {
            "type": "long"
          },
          "collector_transport_port": {
            "type": "long"
          },
          "post_dot1q_vlan_id": {
            "type": "long"
          },
          "observation_time_nanoseconds": {
            "type": "date"
          },
          "firewall_event": {
            "type": "short"
          },
          "octet_total_count": {
            "type": "long"
          },
          "dropped_octet_delta_count": {
            "type": "long"
          },
          "http_message_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "flow_selected_packet_delta_count": {
            "type": "long"
          },
          "post_mcast_packet_total_count": {
            "type": "long"
          },
          "maximum_ttl": {
            "type": "short"
          },
          "flow_active_timeout": {
            "type": "long"
          },
          "dot1q_customer_priority": {
            "type": "short"
          },
          "metro_evc_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "igmp_type": {
            "type": "short"
          },
          "destination_mac_address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "flow_end_sys_up_time": {
            "type": "long"
          },
          "relative_error": {
            "type": "double"
          },
          "source_transport_port": {
            "type": "long"
          },
          "post_nat_source_ipv6_address": {
            "type": "ip"
          },
          "export_protocol_version": {
            "type": "short"
          },
          "mib_object_value_octet_string": {
            "type": "short"
          },
          "exporting_process_id": {
            "type": "long"
          },
          "hash_output_range_max": {
            "type": "long"
          },
          "max_subscribers": {
            "type": "long"
          },
          "dot1q_service_instance_priority": {
            "type": "short"
          },
          "ip_header_length": {
            "type": "short"
          },
          "sampling_algorithm": {
            "type": "short"
          },
          "ingress_broadcast_packet_total_count": {
            "type": "long"
          },
          "min_flow_start_microseconds": {
            "type": "date"
          },
          "data_link_frame_size": {
            "type": "long"
          },
          "ip_ttl": {
            "type": "short"
          },
          "layer2_octet_total_count": {
            "type": "long"
          },
          "mib_object_syntax": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "private_enterprise_number": {
            "type": "long"
          },
          "ignored_layer2_octet_total_count": {
            "type": "long"
          },
          "flow_start_microseconds": {
            "type": "date"
          },
          "address_port_mapping_low_threshold": {
            "type": "long"
          },
          "collector_ipv6_address": {
            "type": "ip"
          },
          "max_flow_end_milliseconds": {
            "type": "date"
          },
          "absolute_error": {
            "type": "double"
          },
          "observation_time_microseconds": {
            "type": "date"
          },
          "minimum_layer2_total_length": {
            "type": "long"
          },
          "flow_end_microseconds": {
            "type": "date"
          },
          "padding_octets": {
            "type": "short"
          },
          "ethernet_total_length": {
            "type": "long"
          },
          "layer2_octet_delta_sum_of_squares": {
            "type": "long"
          },
          "application_group_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "dot1q_dei": {
            "type": "boolean"
          },
          "mpls_top_label_exp": {
            "type": "short"
          },
          "ipv4_options": {
            "type": "long"
          },
          "virtual_station_interface_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fragment_flags": {
            "type": "short"
          },
          "destination_ipv6_address": {
            "type": "ip"
          },
          "system_init_time_milliseconds": {
            "type": "date"
          },
          "message_scope": {
            "type": "short"
          },
          "connection_transaction_id": {
            "type": "long"
          },
          "ip_payload_length": {
            "type": "long"
          },
          "dot1q_service_instance_tag": {
            "type": "short"
          },
          "flow_end_reason": {
            "type": "short"
          },
          "selector_id_total_pkts_selected": {
            "type": "long"
          },
          "flow_duration_milliseconds": {
            "type": "long"
          },
          "original_exporter_ipv4_address": {
            "type": "ip"
          },
          "virtual_station_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port_range_end": {
            "type": "long"
          },
          "flow_id": {
            "type": "long"
          },
          "post_mpls_top_label_exp": {
            "type": "short"
          },
          "ignored_data_record_total_count": {
            "type": "long"
          },
          "flow_selected_flow_delta_count": {
            "type": "long"
          },
          "tcp_syn_total_count": {
            "type": "long"
          },
          "ip_sec_spi": {
            "type": "long"
          },
          "export_transport_protocol": {
            "type": "short"
          },
          "rfc3550_jitter_milliseconds": {
            "type": "long"
          },
          "post_napt_destination_transport_port": {
            "type": "long"
          },
          "max_bib_entries": {
            "type": "long"
          },
          "maximum_layer2_total_length": {
            "type": "long"
          },
          "layer2packet_section_data": {
            "type": "short"
          },
          "egress_broadcast_packet_total_count": {
            "type": "long"
          },
          "transport_octet_delta_count": {
            "type": "long"
          },
          "rfc3550_jitter_microseconds": {
            "type": "long"
          },
          "layer2_frame_delta_count": {
            "type": "long"
          },
          "line_card_id": {
            "type": "long"
          },
          "ethernet_header_length": {
            "type": "short"
          },
          "flow_key_indicator": {
            "type": "long"
          },
          "interface_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mpls_vpn_route_distinguisher": {
            "type": "short"
          },
          "icmp_type_ipv4": {
            "type": "short"
          },
          "icmp_type_ipv6": {
            "type": "short"
          },
          "flags_and_sampler_id": {
            "type": "long"
          },
          "message_md5_checksum": {
            "type": "short"
          },
          "distinct_count_of_source_ipv4_address": {
            "type": "long"
          },
          "packet_total_count": {
            "type": "long"
          },
          "mib_context_engine_id": {
            "type": "short"
          },
          "mib_sub_identifier": {
            "type": "long"
          },
          "post_packet_total_count": {
            "type": "long"
          },
          "sampling_packet_space": {
            "type": "long"
          },
          "p2p_technology": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "min_export_seconds": {
            "type": "date"
          },
          "egress_unicast_packet_total_count": {
            "type": "long"
          },
          "exporter_transport_port": {
            "type": "long"
          },
          "distinct_count_of_destination_ipv4_address": {
            "type": "long"
          },
          "flow_label_ipv6": {
            "type": "long"
          },
          "ignored_octet_total_count": {
            "type": "long"
          },
          "observation_time_milliseconds": {
            "type": "date"
          },
          "nat_quota_exceeded_event": {
            "type": "long"
          },
          "max_flow_end_nanoseconds": {
            "type": "date"
          },
          "mpls_top_label_ttl": {
            "type": "short"
          },
          "engine_id": {
            "type": "short"
          },
          "mib_object_description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "section_offset": {
            "type": "long"
          },
          "flow_end_milliseconds": {
            "type": "date"
          },
          "ip_precedence": {
            "type": "short"
          },
          "collection_time_milliseconds": {
            "type": "date"
          }
        }
      },
      "apache": {
        "properties": {
          "access": {
            "properties": {
              "ssl": {
                "properties": {
                  "cipher": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "protocol": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "error": {
            "properties": {
              "module": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "code_signature": {
        "properties": {
          "valid": {
            "type": "boolean"
          },
          "trusted": {
            "type": "boolean"
          },
          "subject_name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "exists": {
            "type": "boolean"
          },
          "status": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "timeseries": {
        "properties": {
          "instance": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "ecs": {
        "properties": {
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "host": {
        "properties": {
          "os": {
            "properties": {
              "build": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "kernel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "codename": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "family": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "platform": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "full": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              }
            }
          },
          "ip": {
            "type": "ip"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "uptime": {
            "type": "long"
          },
          "geo": {
            "properties": {
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "hostname": {
            "ignore_above": 1024,
            "type": "keyword",
			"normalizer": "lc_n"
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "containerized": {
            "type": "boolean"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword",
			"normalizer": "lc_n"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "domain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "architecture": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "mysql": {
        "properties": {
          "thread_id": {
            "type": "long"
          },
          "slowlog": {
            "properties": {
              "schema": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "read_last": {
                "type": "long"
              },
              "read_rnd_next": {
                "type": "long"
              },
              "tmp_table_sizes": {
                "type": "long"
              },
              "rows_examined": {
                "type": "long"
              },
              "sort_merge_passes": {
                "type": "long"
              },
              "bytes_received": {
                "type": "long"
              },
              "innodb": {
                "properties": {
                  "trx_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "io_r_ops": {
                    "type": "long"
                  },
                  "io_r_wait": {
                    "properties": {
                      "sec": {
                        "type": "long"
                      }
                    }
                  },
                  "rec_lock_wait": {
                    "properties": {
                      "sec": {
                        "type": "long"
                      }
                    }
                  },
                  "queue_wait": {
                    "properties": {
                      "sec": {
                        "type": "long"
                      }
                    }
                  },
                  "pages_distinct": {
                    "type": "long"
                  },
                  "io_r_bytes": {
                    "type": "long"
                  }
                }
              },
              "tmp_disk_tables": {
                "type": "long"
              },
              "sort_range_count": {
                "type": "long"
              },
              "sort_rows": {
                "type": "long"
              },
              "filesort_on_disk": {
                "type": "boolean"
              },
              "tmp_tables": {
                "type": "long"
              },
              "full_join": {
                "type": "boolean"
              },
              "read_prev": {
                "type": "long"
              },
              "current_user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_slow_rate_limit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_slow_rate_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "read_next": {
                "type": "long"
              },
              "priority_queue": {
                "type": "boolean"
              },
              "full_scan": {
                "type": "boolean"
              },
              "sort_scan_count": {
                "type": "long"
              },
              "read_first": {
                "type": "long"
              },
              "query": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "merge_passes": {
                "type": "long"
              },
              "filesort": {
                "type": "boolean"
              },
              "bytes_sent": {
                "type": "long"
              },
              "killed": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tmp_table": {
                "type": "boolean"
              },
              "lock_time": {
                "properties": {
                  "sec": {
                    "type": "float"
                  }
                }
              },
              "read_rnd": {
                "type": "long"
              },
              "rows_affected": {
                "type": "long"
              },
              "rows_sent": {
                "type": "long"
              },
              "read_key": {
                "type": "long"
              },
              "last_errno": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "query_cache_hit": {
                "type": "boolean"
              },
              "tmp_table_on_disk": {
                "type": "boolean"
              }
            }
          },
          "error": {
            "properties": {}
          }
        }
      },
      "group": {
        "properties": {
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "tracing": {
        "properties": {
          "trace": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "transaction": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "package": {
        "properties": {
          "installed": {
            "type": "date"
          },
          "build_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reference": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "license": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "path": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "install_scope": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "size": {
            "type": "long"
          },
          "checksum": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "architecture": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "nginx": {
        "properties": {
          "access": {
            "properties": {
              "geoip": {
                "properties": {}
              },
              "user_agent": {
                "properties": {}
              }
            }
          },
          "ingress_controller": {
            "properties": {
              "upstream": {
                "properties": {
                  "alternative_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "port": {
                    "type": "long"
                  },
                  "response": {
                    "properties": {
                      "status_code": {
                        "type": "long"
                      },
                      "length": {
                        "type": "long"
                      },
                      "time": {
                        "type": "double"
                      }
                    }
                  },
                  "ip": {
                    "type": "ip"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "geoip": {
                "properties": {}
              },
              "http": {
                "properties": {
                  "request": {
                    "properties": {
                      "length": {
                        "type": "long"
                      },
                      "time": {
                        "type": "double"
                      },
                      "id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "user_agent": {
                "properties": {}
              }
            }
          },
          "error": {
            "properties": {
              "connection_id": {
                "type": "long"
              }
            }
          }
        }
      },
      "sophos": {
        "properties": {
          "xg": {
            "properties": {
              "transmittederrors": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_dst_ip": {
                "type": "ip"
              },
              "reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "av_policy_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Configuration": {
                "type": "float"
              },
              "override_token": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ips_policy_id": {
                "type": "long"
              },
              "sessionid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "starttime": {
                "type": "date"
              },
              "context_suffix": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "application_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_cpu": {
                "type": "float"
              },
              "newversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "appfilter_policy_id": {
                "type": "long"
              },
              "icmp_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "PHPSESSID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "auth_mechanism": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "idp_policy_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fw_rule_id": {
                "type": "long"
              },
              "transaction_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "appresolvedby": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "cookie": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "receivederrors": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "upload_file_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "to_email_address": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "priority": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "classification": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "FTP_url": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ap": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dictionary_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srczone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "policy_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "override_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "localnetwork": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filename": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "login_user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstzone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "application_technology": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "activityname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "device": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "server": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "icmp_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dir_disp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_src_ ip": {
                "type": "ip"
              },
              "mailsize": {
                "type": "long"
              },
              "remotenetwork": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "filesize": {
                "type": "long"
              },
              "virus": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "site_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "transmitteddrops": {
                "type": "long"
              },
              "quarantine_reason": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "srczonetype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "app_is_cloud": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "localgateway": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "signature_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total_memory": {
                "type": "long"
              },
              "application_risk": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "client_host_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstzonetype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "iap": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "responsetime": {
                "type": "long"
              },
              "free": {
                "type": "long"
              },
              "context_match": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "out_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "timestamp": {
                "type": "date"
              },
              "application_category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "log_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "website": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "collisions": {
                "type": "long"
              },
              "log_subtype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "httpresponsecode": {
                "type": "long"
              },
              "transmittedkbits": {
                "type": "long"
              },
              "message_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_priority": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "connevent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_size": {
                "type": "long"
              },
              "url": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_src_port": {
                "type": "long"
              },
              "oldversion": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "recv_bytes": {
                "type": "long"
              },
              "auth_client": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha1sum": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dst_port": {
                "type": "long"
              },
              "connid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "quarantine": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "date": {
                "type": "date"
              },
              "referer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "context_prefix": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "override_authorizer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventtime": {
                "type": "date"
              },
              "used": {
                "type": "long"
              },
              "source": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remote_ip": {
                "type": "ip"
              },
              "sourceip": {
                "type": "ip"
              },
              "filepath": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "src_country_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "clients_conn_ssid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mailid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "from_email_address": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "raw_data": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "application_filter_policy": {
                "type": "long"
              },
              "vconn_id": {
                "type": "long"
              },
              "connectionname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "domainname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "querystring": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ep_uuid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "download_file_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "exceptions": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "users": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "start_time": {
                "type": "date"
              },
              "unit": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "FTP_direction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "execution_path": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "conn_id": {
                "type": "long"
              },
              "backup_mode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email_subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dst_country_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ipaddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "idp_policy_id": {
                "type": "long"
              },
              "status_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "signature_msg": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "receiveddrops": {
                "type": "long"
              },
              "timezone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ftpcommand": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "con_id": {
                "type": "long"
              },
              "in_interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "received_pkts": {
                "type": "long"
              },
              "upload_file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "spamaction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dst_domainname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "platform": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "system_cpu": {
                "type": "float"
              },
              "dst_ip": {
                "type": "ip"
              },
              "transactionid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sent_bytes": {
                "type": "long"
              },
              "red_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "duration": {
                "type": "long"
              },
              "src_ip": {
                "type": "ip"
              },
              "device_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Temp": {
                "type": "float"
              },
              "client_physical_address": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "extra": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "branch_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "connectiontype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "direction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "dstdomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "trans_dst_port": {
                "type": "long"
              },
              "src_mac": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sent_pkts": {
                "type": "long"
              },
              "log_component": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hb_health": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Mode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_gp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Reports": {
                "type": "float"
              },
              "message": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "idle_cpu": {
                "type": "float"
              },
              "threatname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "contenttype": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "target": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destinationip": {
                "type": "ip"
              },
              "src_port": {
                "type": "long"
              },
              "receivedkbits": {
                "type": "long"
              },
              "updatedip": {
                "type": "ip"
              },
              "SysLog_SERVER_NAME": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "application": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Signature": {
                "type": "float"
              },
              "src_domainname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "category": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "download_file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "http": {
        "properties": {
          "request": {
            "properties": {
              "referrer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bytes": {
                "type": "long"
              },
              "body": {
                "properties": {
                  "bytes": {
                    "type": "long"
                  },
                  "content": {
                    "ignore_above": 1024,
                    "type": "keyword",
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    }
                  }
                }
              }
            }
          },
          "response": {
            "properties": {
              "status_code": {
                "type": "long"
              },
              "bytes": {
                "type": "long"
              },
              "body": {
                "properties": {
                  "bytes": {
                    "type": "long"
                  },
                  "content": {
                    "ignore_above": 1024,
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    },
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "fields": {
        "type": "object"
      },
      "gsuite": {
        "properties": {
          "actor": {
            "properties": {
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "key": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "kind": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "organization": {
            "properties": {
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "saml": {
            "properties": {
              "initiated_by": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status_code": {
                "type": "long"
              },
              "application_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "second_level_status_code": {
                "type": "long"
              },
              "failure_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "orgunit_path": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "groups": {
            "properties": {
              "member": {
                "properties": {
                  "role": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "old_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "message": {
                "properties": {
                  "moderation_action": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "acl_permission": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "setting": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "admin": {
            "properties": {
              "request": {
                "properties": {
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "info_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "role": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "bulk_upload": {
                "properties": {
                  "total": {
                    "type": "long"
                  },
                  "failed": {
                    "type": "long"
                  }
                }
              },
              "print_server": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "chrome_licenses": {
                "properties": {
                  "allowed": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "enabled": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "non_featured_services_selection": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "privilege": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "email_monitor": {
                "properties": {
                  "level": {
                    "properties": {
                      "incoming": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "outgoing": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "chat": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "draft": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "dest_email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "oauth2": {
                "properties": {
                  "application": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "type": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "service": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "distribution": {
                "properties": {
                  "entity": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "type": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "setting": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "description": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "alert": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "verification_method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "chrome_os": {
                "properties": {
                  "session_type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "api": {
                "properties": {
                  "client": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "scopes": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "managed_configuration": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "properties": {
                  "log_search_filter": {
                    "properties": {
                      "end_date": {
                        "type": "date"
                      },
                      "sender": {
                        "properties": {
                          "ip": {
                            "type": "ip"
                          },
                          "value": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      },
                      "recipient": {
                        "properties": {
                          "ip": {
                            "type": "ip"
                          },
                          "value": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      },
                      "message_id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "start_date": {
                        "type": "date"
                      }
                    }
                  },
                  "quarantine_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "group": {
                "properties": {
                  "priorities": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "allowed_list": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "org_unit": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "full": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "product": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "sku": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "user_defined_setting": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "email_dump": {
                "properties": {
                  "query": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "include_deleted": {
                    "type": "boolean"
                  },
                  "package_content": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "resource": {
                "properties": {
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "printer": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "mobile": {
                "properties": {
                  "company_owned_devices": {
                    "type": "long"
                  },
                  "certificate": {
                    "properties": {
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "action": {
                    "properties": {
                      "id": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "type": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  }
                }
              },
              "url": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "application": {
                "properties": {
                  "asp_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "licences_purchased": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "licences_order_number": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "edition": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "package_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "enabled": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "field": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "service": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "mdm": {
                "properties": {
                  "vendor": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "token": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "domain": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "alias": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "secondary_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "old_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user": {
                "properties": {
                  "birthdate": {
                    "type": "date"
                  },
                  "nickname": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "device": {
                "properties": {
                  "command_details": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "serial_number": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "gateway": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "event": {
            "properties": {
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "drive": {
            "properties": {
              "old_visibility": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "membership_change_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "originating_app_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "visibility": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destination_folder_title": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "removed_role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "target_domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "billable": {
                "type": "boolean"
              },
              "sheets_import_range_recipient_doc": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "destination_folder_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "target": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "file": {
                "properties": {
                  "owner": {
                    "properties": {
                      "email": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "is_shared_drive": {
                        "type": "boolean"
                      }
                    }
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "primary_event": {
                "type": "boolean"
              },
              "shared_drive_settings_change_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_folder_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shared_drive_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "source_folder_title": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "old_value": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "added_role": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "visibility_change": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_value": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "login": {
            "properties": {
              "affected_email_address": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "challenge_method": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "is_suspicious": {
                "type": "boolean"
              },
              "failure_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "is_second_factor": {
                "type": "boolean"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "iptables": {
        "properties": {
          "tcp": {
            "properties": {
              "reserved_bits": {
                "type": "short"
              },
              "ack": {
                "type": "long"
              },
              "flags": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "window": {
                "type": "long"
              },
              "seq": {
                "type": "long"
              }
            }
          },
          "udp": {
            "properties": {
              "length": {
                "type": "long"
              }
            }
          },
          "fragment_offset": {
            "type": "long"
          },
          "flow_label": {
            "type": "long"
          },
          "precedence_bits": {
            "type": "short"
          },
          "input_device": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "fragment_flags": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "length": {
            "type": "long"
          },
          "icmp": {
            "properties": {
              "redirect": {
                "type": "ip"
              },
              "code": {
                "type": "long"
              },
              "parameter": {
                "type": "long"
              },
              "id": {
                "type": "long"
              },
              "type": {
                "type": "long"
              },
              "seq": {
                "type": "long"
              }
            }
          },
          "ttl": {
            "type": "long"
          },
          "ether_type": {
            "type": "long"
          },
          "ubiquiti": {
            "properties": {
              "output_zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "input_zone": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_set": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rule_number": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "tos": {
            "type": "long"
          },
          "output_device": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "type": "long"
          },
          "incomplete_bytes": {
            "type": "long"
          }
        }
      },
      "coredns": {
        "properties": {
          "response": {
            "properties": {
              "code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "size": {
                "type": "long"
              },
              "flags": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "dnssec_ok": {
            "type": "boolean"
          },
          "query": {
            "properties": {
              "size": {
                "type": "long"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "class": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "object_key": {
        "ignore_above": 1024,
        "type": "keyword"
      },
      "traefik": {
        "properties": {
          "access": {
            "properties": {
              "user_identifier": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "geoip": {
                "properties": {
                  "region_iso_code": {
                    "path": "source.geo.region_iso_code",
                    "type": "alias"
                  },
                  "continent_name": {
                    "path": "source.geo.continent_name",
                    "type": "alias"
                  },
                  "city_name": {
                    "path": "source.geo.city_name",
                    "type": "alias"
                  },
                  "country_iso_code": {
                    "path": "source.geo.country_iso_code",
                    "type": "alias"
                  },
                  "location": {
                    "path": "source.geo.location",
                    "type": "alias"
                  },
                  "region_name": {
                    "path": "source.geo.region_name",
                    "type": "alias"
                  }
                }
              },
              "frontend_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "backend_url": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_agent": {
                "properties": {
                  "original": {
                    "path": "user_agent.original",
                    "type": "alias"
                  },
                  "os": {
                    "path": "user_agent.os.full_name",
                    "type": "alias"
                  },
                  "name": {
                    "path": "user_agent.name",
                    "type": "alias"
                  },
                  "os_name": {
                    "path": "user_agent.os.name",
                    "type": "alias"
                  },
                  "device": {
                    "path": "user_agent.device.name",
                    "type": "alias"
                  }
                }
              },
              "request_count": {
                "type": "long"
              }
            }
          }
        }
      },
      "destination": {
        "properties": {
          "nat": {
            "properties": {
              "port": {
                "type": "long"
              },
              "ip": {
                "type": "ip"
              }
            }
          },
          "address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_level_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "packets": {
            "type": "long"
          },
          "geo": {
            "properties": {
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              }
            }
          },
          "as": {
            "properties": {
              "number": {
                "type": "long"
              },
              "organization": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword",
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    }
                  }
                }
              }
            }
          },
          "registered_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port": {
            "type": "long"
          },
          "service": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "domain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "rule": {
        "properties": {
          "reference": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "license": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "author": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ruleset": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "category": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "uuid": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "misp": {
        "properties": {
          "note": {
            "properties": {
              "summary": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "object_refs": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "authors": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "attack_pattern": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "kill_chain_phases": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "intrusion_set": {
            "properties": {
              "first_seen": {
                "type": "date"
              },
              "primary_motivation": {
                "norms": false,
                "type": "text"
              },
              "aliases": {
                "norms": false,
                "type": "text"
              },
              "last_seen": {
                "type": "date"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resource_level": {
                "norms": false,
                "type": "text"
              },
              "secondary_motivations": {
                "norms": false,
                "type": "text"
              },
              "goals": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "malware": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "kill_chain_phases": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "vulnerability": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "tool": {
            "properties": {
              "tool_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "kill_chain_phases": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "observed_data": {
            "properties": {
              "first_observed": {
                "type": "date"
              },
              "number_observed": {
                "type": "long"
              },
              "last_observed": {
                "type": "date"
              },
              "objects": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "threat_actor": {
            "properties": {
              "personal_motivations": {
                "norms": false,
                "type": "text"
              },
              "aliases": {
                "norms": false,
                "type": "text"
              },
              "primary_motivation": {
                "norms": false,
                "type": "text"
              },
              "sophistication": {
                "norms": false,
                "type": "text"
              },
              "roles": {
                "norms": false,
                "type": "text"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resource_level": {
                "norms": false,
                "type": "text"
              },
              "goals": {
                "norms": false,
                "type": "text"
              },
              "secondary_motivations": {
                "norms": false,
                "type": "text"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "course_of_action": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "identity": {
            "properties": {
              "identity_class": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sectors": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "contact_information": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "threat_indicator": {
            "properties": {
              "severity": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "attack_pattern": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "intrusion_set": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mitre_tactic": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "confidence": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "valid_from": {
                "type": "date"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mitre_technique": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "feed": {
                "norms": false,
                "type": "text"
              },
              "threat_actor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "valid_until": {
                "type": "date"
              },
              "attack_pattern_kql": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "negate": {
                "type": "boolean"
              },
              "campaign": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "kill_chain_phases": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "report": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "published": {
                "type": "date"
              },
              "object_refs": {
                "norms": false,
                "type": "text"
              },
              "labels": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "campaign": {
            "properties": {
              "aliases": {
                "norms": false,
                "type": "text"
              },
              "first_seen": {
                "type": "date"
              },
              "last_seen": {
                "type": "date"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "norms": false,
                "type": "text"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "objective": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "error": {
        "properties": {
          "code": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "stack_trace": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "message": {
            "norms": false,
            "type": "text"
          }
        }
      },
      "auditd": {
        "properties": {
          "log": {
            "properties": {
              "new_auid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "new_ses": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "item": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "laddr": {
                "type": "ip"
              },
              "geoip": {
                "properties": {}
              },
              "old_ses": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "rport": {
                "type": "long"
              },
              "lport": {
                "type": "long"
              },
              "a0": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sequence": {
                "type": "long"
              },
              "old_auid": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tty": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "addr": {
                "type": "ip"
              },
              "items": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "interface": {
        "properties": {
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "alias": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "docker": {
        "properties": {
          "container": {
            "properties": {
              "labels": {
                "type": "object"
              }
            }
          },
          "attrs": {
            "type": "object"
          }
        }
      },
      "network": {
        "properties": {
          "transport": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "interface": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "inner": {
            "type": "object",
            "properties": {
              "vlan": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "packets": {
            "type": "long"
          },
          "community_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "forwarded_ip": {
            "type": "ip"
          },
          "protocol": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "application": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "vlan": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "bytes": {
            "type": "long"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "iana_number": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "direction": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "santa": {
        "properties": {
          "mode": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "reason": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "disk": {
            "properties": {
              "volume": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bus": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "serial": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bsdname": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "model": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "fs": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "mount": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "decision": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "certificate": {
            "properties": {
              "sha256": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "common_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "action": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "related": {
        "properties": {
          "ip": {
            "type": "ip"
          },
          "user": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hash": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "postgresql": {
        "properties": {
          "log": {
            "properties": {
              "database": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "core_id": {
                "type": "long"
              },
              "query_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "query": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "query_step": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "error": {
                "properties": {
                  "code": {
                    "type": "long"
                  }
                }
              },
              "timestamp": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "client": {
        "properties": {
          "nat": {
            "properties": {
              "port": {
                "type": "long"
              },
              "ip": {
                "type": "ip"
              }
            }
          },
          "address": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "top_level_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ip": {
            "type": "ip"
          },
          "mac": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "packets": {
            "type": "long"
          },
          "geo": {
            "properties": {
              "region_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "continent_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "city_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_iso_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "country_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "location": {
                "type": "geo_point"
              },
              "region_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "as": {
            "properties": {
              "number": {
                "type": "long"
              },
              "organization": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "fields": {
                      "text": {
                        "norms": false,
                        "type": "text"
                      }
                    },
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "registered_domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "port": {
            "type": "long"
          },
          "bytes": {
            "type": "long"
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "user": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "email": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "domain": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "crowdstrike": {
        "properties": {
          "metadata": {
            "properties": {
              "offset": {
                "type": "long"
              },
              "eventCreationTime": {
                "type": "date"
              },
              "customerIDString": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "eventType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "event": {
            "properties": {
              "SensorId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Tactic": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "EventType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "StartTimestamp": {
                "type": "date"
              },
              "ParentProcessId": {
                "type": "long"
              },
              "UTCTimestamp": {
                "type": "date"
              },
              "EndTimestamp": {
                "type": "date"
              },
              "RuleFamilyID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "FalconHostLink": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "GrandparentImageFileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Ipv": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Success": {
                "type": "boolean"
              },
              "SHA1String": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ProcessEndTime": {
                "type": "date"
              },
              "IOCValue": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "TreeID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MatchCount": {
                "type": "long"
              },
              "ParentCommandLine": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SessionId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "HostName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "PolicyID": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RuleName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LocalAddress": {
                "type": "ip"
              },
              "PatternDispositionFlags": {
                "type": "object"
              },
              "ICMPCode": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "PatternDispositionDescription": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "CustomerId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Objective": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ServiceName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ImageFileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "State": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "PolicyName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "DetectName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ProcessStartTime": {
                "type": "date"
              },
              "ComputerName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "IncidentStartTime": {
                "type": "date"
              },
              "Technique": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LateralMovement": {
                "type": "long"
              },
              "FineScore": {
                "type": "float"
              },
              "RemoteAddress": {
                "type": "ip"
              },
              "DeviceId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RuleGroupName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RuleId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RuleAction": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "FileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ParentImageFileName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MachineDomain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "AuditKeyValues": {
                "type": "nested"
              },
              "Timestamp": {
                "type": "date"
              },
              "ExecutablesWritten": {
                "type": "nested"
              },
              "LocalIP": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MatchCountSinceLastReport": {
                "type": "long"
              },
              "Commands": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "DetectDescription": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "FilePath": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RuleDescription": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserIp": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "UserName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "OperationName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MD5String": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "RemotePort": {
                "type": "long"
              },
              "IncidentEndTime": {
                "type": "date"
              },
              "SeverityName": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "Severity": {
                "type": "long"
              },
              "PID": {
                "type": "long"
              },
              "PatternDispositionValue": {
                "type": "long"
              },
              "Flags": {
                "properties": {
                  "Audit": {
                    "type": "boolean"
                  },
                  "Monitor": {
                    "type": "boolean"
                  },
                  "Log": {
                    "type": "boolean"
                  }
                }
              },
              "DetectId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "HostnameField": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "SHA256String": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "NetworkProfile": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "CommandLine": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "MACAddress": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "GrandparentCommandLine": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "LocalPort": {
                "type": "long"
              },
              "UserId": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "IOCType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ProcessId": {
                "type": "long"
              },
              "ICMPType": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ConnectionDirection": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "googlecloud": {
        "properties": {
          "firewall": {
            "properties": {
              "rule_details": {
                "properties": {
                  "reference": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "source_service_account": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "source_range": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "target_service_account": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "source_tag": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "destination_range": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "action": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "target_tag": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "priority": {
                    "type": "long"
                  },
                  "direction": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "vpcflow": {
            "properties": {
              "rtt": {
                "properties": {
                  "ms": {
                    "type": "long"
                  }
                }
              },
              "reporter": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "audit": {
            "properties": {
              "request": {
                "properties": {
                  "filter": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "proto_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "resource_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "authentication_info": {
                "properties": {
                  "principal_email": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "authority_selector": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "request_metadata": {
                "properties": {
                  "caller_ip": {
                    "type": "ip"
                  },
                  "caller_supplied_user_agent": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "method_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "response": {
                "properties": {
                  "proto_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "details": {
                    "properties": {
                      "uid": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "kind": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "name": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "group": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      }
                    }
                  },
                  "status": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "service_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "num_response_items": {
                "type": "long"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resource_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "resource_location": {
                "properties": {
                  "current_locations": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "status": {
                "properties": {
                  "code": {
                    "type": "long"
                  },
                  "message": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "destination": {
            "properties": {
              "instance": {
                "properties": {
                  "project_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "zone": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "region": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "vpc": {
                "properties": {
                  "vpc_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "project_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "subnetwork_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "source": {
            "properties": {
              "instance": {
                "properties": {
                  "project_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "zone": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "region": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "vpc": {
                "properties": {
                  "vpc_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "project_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "subnetwork_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          }
        }
      },
      "mongodb": {
        "properties": {
          "log": {
            "properties": {
              "component": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "context": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "user_agent": {
        "properties": {
          "original": {
            "ignore_above": 1024,
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            },
            "type": "keyword"
          },
          "os": {
            "properties": {
              "full_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "kernel": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "family": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "platform": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "full": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "device": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "jolokia": {
        "properties": {
          "server": {
            "properties": {
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vendor": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "agent": {
            "properties": {
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "secured": {
            "type": "boolean"
          },
          "url": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "registry": {
        "properties": {
          "hive": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "path": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "data": {
            "properties": {
              "strings": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bytes": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "value": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "key": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "process": {
        "properties": {
          "parent": {
            "properties": {
              "pgid": {
                "type": "long"
              },
              "start": {
                "type": "date"
              },
              "pid": {
                "type": "long"
              },
              "working_directory": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "thread": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "type": "long"
                  }
                }
              },
              "entity_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "title": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "executable": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "ppid": {
                "type": "long"
              },
              "uptime": {
                "type": "long"
              },
              "args": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "code_signature": {
                "properties": {
                  "valid": {
                    "type": "boolean"
                  },
                  "trusted": {
                    "type": "boolean"
                  },
                  "subject_name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "exists": {
                    "type": "boolean"
                  },
                  "status": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "exit_code": {
                "type": "long"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "args_count": {
                "type": "long"
              },
              "command_line": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "hash": {
                "properties": {
                  "sha1": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "sha256": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "sha512": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "md5": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "pgid": {
            "type": "long"
          },
          "start": {
            "type": "date"
          },
          "pid": {
            "type": "long"
          },
          "working_directory": {
            "ignore_above": 1024,
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            },
            "type": "keyword"
          },
          "thread": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "type": "long"
              }
            }
          },
          "program": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "title": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "entity_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "executable": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "ppid": {
            "type": "long"
          },
          "uptime": {
            "type": "long"
          },
          "args": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "code_signature": {
            "properties": {
              "valid": {
                "type": "boolean"
              },
              "trusted": {
                "type": "boolean"
              },
              "subject_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "exists": {
                "type": "boolean"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "pe": {
            "properties": {
              "file_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "company": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "original_file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "exit_code": {
            "type": "long"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "args_count": {
            "type": "long"
          },
          "command_line": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "hash": {
            "properties": {
              "sha1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha256": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha512": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "md5": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "osquery": {
        "properties": {
          "result": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "unix_time": {
                "type": "long"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "calendar_time": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_identifier": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "os": {
        "properties": {
          "kernel": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            },
            "type": "keyword"
          },
          "family": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "platform": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "full": {
            "ignore_above": 1024,
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            },
            "type": "keyword"
          }
        }
      },
      "dll": {
        "properties": {
          "path": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "code_signature": {
            "properties": {
              "valid": {
                "type": "boolean"
              },
              "trusted": {
                "type": "boolean"
              },
              "subject_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "exists": {
                "type": "boolean"
              },
              "status": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "pe": {
            "properties": {
              "file_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "product": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "description": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "original_file_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "company": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hash": {
            "properties": {
              "sha1": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha256": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "sha512": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "md5": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "message": {
        "norms": false,
        "type": "text"
      },
      "ibmmq": {
        "properties": {
          "errorlog": {
            "properties": {
              "errordescription": {
                "norms": false,
                "type": "text"
              },
              "qmgr": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "commentinsert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "installation": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "arithinsert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "explanation": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "envoyproxy": {
        "properties": {
          "response_flags": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "log_type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "authority": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "upstream_service_time": {
            "type": "long"
          },
          "request_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "proxy_type": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "pe": {
        "properties": {
          "file_version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "product": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "description": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "company": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "original_file_name": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "service": {
        "properties": {
          "node": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "state": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "ephemeral_id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "type": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "tls": {
        "properties": {
          "cipher": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "established": {
            "type": "boolean"
          },
          "server": {
            "properties": {
              "not_after": {
                "type": "date"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ja3s": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "not_before": {
                "type": "date"
              },
              "certificate": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "certificate_chain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "properties": {
                  "sha1": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "sha256": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "md5": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "issuer": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "curve": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "next_protocol": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "client": {
            "properties": {
              "not_after": {
                "type": "date"
              },
              "server_name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "not_before": {
                "type": "date"
              },
              "subject": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "supported_ciphers": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "certificate": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ja3": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "certificate_chain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "hash": {
                "properties": {
                  "sha1": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "sha256": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "md5": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "issuer": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "resumed": {
            "type": "boolean"
          },
          "version": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "version_protocol": {
            "ignore_above": 1024,
            "type": "keyword"
          }
        }
      },
      "threat": {
        "properties": {
          "framework": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "technique": {
            "properties": {
              "reference": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "tactic": {
            "properties": {
              "reference": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "aws": {
        "properties": {
          "ec2": {
            "properties": {
              "ip_address": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "vpcflow": {
            "properties": {
              "log_status": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "instance_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "account_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "interface_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tcp_flags": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "vpc_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pkt_srcaddr": {
                "type": "ip"
              },
              "action": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "subnet_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "pkt_dstaddr": {
                "type": "ip"
              }
            }
          },
          "s3access": {
            "properties": {
              "requester": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "signature_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "tls_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "version_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "turn_around_time": {
                "type": "long"
              },
              "bytes_sent": {
                "type": "long"
              },
              "authentication_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_uri": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "host_header": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "bucket": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "referrer": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "remote_ip": {
                "type": "ip"
              },
              "cipher_suite": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "error_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "http_status": {
                "type": "long"
              },
              "bucket_owner": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "total_time": {
                "type": "long"
              },
              "request_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "operation": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "key": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "user_agent": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "object_size": {
                "type": "long"
              }
            }
          },
          "cloudwatch": {
            "properties": {
              "message": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "elb": {
            "properties": {
              "trace_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "matched_rule_priority": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "incoming_tls_alert": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "ssl_cipher": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "listener": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "error": {
                "properties": {
                  "reason": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_processing_time": {
                "properties": {
                  "sec": {
                    "type": "float"
                  }
                }
              },
              "connection_time": {
                "properties": {
                  "ms": {
                    "type": "long"
                  }
                }
              },
              "tls_named_group": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "response_processing_time": {
                "properties": {
                  "sec": {
                    "type": "float"
                  }
                }
              },
              "protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "backend": {
                "properties": {
                  "port": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "ip": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "http": {
                    "properties": {
                      "response": {
                        "properties": {
                          "status_code": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      }
                    }
                  }
                }
              },
              "tls_handshake_time": {
                "properties": {
                  "ms": {
                    "type": "long"
                  }
                }
              },
              "target_group": {
                "properties": {
                  "arn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "ssl_protocol": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "redirect_url": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "backend_processing_time": {
                "properties": {
                  "sec": {
                    "type": "float"
                  }
                }
              },
              "chosen_cert": {
                "properties": {
                  "serial": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "arn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "action_executed": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          },
          "cloudtrail": {
            "properties": {
              "error_message": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "flattened": {
                "properties": {
                  "additional_eventdata": {
                    "type": "flattened"
                  },
                  "service_event_details": {
                    "type": "flattened"
                  },
                  "request_parameters": {
                    "type": "flattened"
                  },
                  "response_elements": {
                    "type": "flattened"
                  }
                }
              },
              "additional_eventdata": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "resources": {
                "properties": {
                  "account_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "arn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "recipient_account_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "api_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_parameters": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "event_version": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "event_type": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "read_only": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "shared_event_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "console_login": {
                "properties": {
                  "additional_eventdata": {
                    "properties": {
                      "login_to": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "mobile_version": {
                        "type": "boolean"
                      },
                      "mfa_used": {
                        "type": "boolean"
                      }
                    }
                  }
                }
              },
              "user_identity": {
                "properties": {
                  "access_key_id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "invoked_by": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "session_context": {
                    "properties": {
                      "session_issuer": {
                        "properties": {
                          "account_id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "type": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "arn": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          },
                          "principal_id": {
                            "ignore_above": 1024,
                            "type": "keyword"
                          }
                        }
                      },
                      "mfa_authenticated": {
                        "ignore_above": 1024,
                        "type": "keyword"
                      },
                      "creation_date": {
                        "type": "date"
                      }
                    }
                  },
                  "type": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "arn": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              },
              "service_event_details": {
                "ignore_above": 1024,
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                },
                "type": "keyword"
              },
              "error_code": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "request_id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "management_event": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "response_elements": {
                "ignore_above": 1024,
                "type": "keyword",
                "fields": {
                  "text": {
                    "norms": false,
                    "type": "text"
                  }
                }
              },
              "vpc_endpoint_id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "user": {
        "properties": {
          "owner": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "saved": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "terminal": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "filesystem": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "effective": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "full_name": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "audit": {
            "properties": {
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "group": {
                "properties": {
                  "name": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  },
                  "id": {
                    "ignore_above": 1024,
                    "type": "keyword"
                  }
                }
              }
            }
          },
          "domain": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "name": {
            "ignore_above": 1024,
            "type": "keyword",
            "fields": {
              "text": {
                "norms": false,
                "type": "text"
              }
            }
          },
          "id": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "email": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "hash": {
            "ignore_above": 1024,
            "type": "keyword"
          },
          "group": {
            "properties": {
              "domain": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "name": {
                "ignore_above": 1024,
                "type": "keyword"
              },
              "id": {
                "ignore_above": 1024,
                "type": "keyword"
              }
            }
          }
        }
      },
      "endDate": {
        "type": "date",
        "format": "yyyy-MM-dd"
      },
      "postedDate": {
        "type": "date",
        "format": "yyyy-MM-dd'T'HH:mm:ssZ"
      },
	  "feed_analysed" : {
          "type" : "text",
		  "analyzer" : "keyword_analyzer"
		  },
		  "taggedGroupNames" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          }
        },
        "taggedGroups" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          },
          "fielddata" : true
        },
		"actStat" : {
          "type" : "text",
          "fields" : {
            "keyword" : {
              "type" : "keyword",
              "ignore_above" : 256
            }
          }
        },
		 "subGroupId" : {
          "type" : "long"
        },
		"hostname" : {
		  "type": "keyword",
			"normalizer": "lc_n"
		},
		"isError":{
		"type" : "long"
		},
		"isAnomaly":{
		"type":"long"
		}
    }
  },
  "aliases": {}
  }
