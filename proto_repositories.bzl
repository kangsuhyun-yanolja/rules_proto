load("@build_stack_rules_proto//rules/proto:proto_repository.bzl", "proto_repository")

def proto_repositories():
    proto_repository(
        name = "protoapis",
        build_directives = [
            "gazelle:exclude testdata",
            "gazelle:exclude google/protobuf/compiler/ruby",
            "gazelle:exclude google/protobuf/util",
            "gazelle:proto_language go enable false",
            "gazelle:proto_language cpp enable false",
            "gazelle:proto_language descriptor enable true",
        ],
        build_file_expunge = True,
        build_file_proto_mode = "file",
        cfgs = ["//example:config.yaml"],
        deleted_files = [
            "google/protobuf/map_lite_unittest.proto",
            "google/protobuf/map_proto2_unittest.proto",
            "google/protobuf/map_proto3_unittest.proto",
            "google/protobuf/map_unittest.proto",
            "google/protobuf/test_messages_proto2.proto",
            "google/protobuf/test_messages_proto3.proto",
            "google/protobuf/unittest.proto",
            "google/protobuf/unittest_arena.proto",
            "google/protobuf/unittest_custom_options.proto",
            "google/protobuf/unittest_drop_unknown_fields.proto",
            "google/protobuf/unittest_embed_optimize_for.proto",
            "google/protobuf/unittest_empty.proto",
            "google/protobuf/unittest_enormous_descriptor.proto",
            "google/protobuf/unittest_import_lite.proto",
            "google/protobuf/unittest_import_public_lite.proto",
            "google/protobuf/unittest_import_public.proto",
            "google/protobuf/unittest_import.proto",
            "google/protobuf/unittest_lazy_dependencies_custom_option.proto",
            "google/protobuf/unittest_lazy_dependencies_enum.proto",
            "google/protobuf/unittest_lazy_dependencies.proto",
            "google/protobuf/unittest_lite_imports_nonlite.proto",
            "google/protobuf/unittest_lite.proto",
            "google/protobuf/unittest_mset_wire_format.proto",
            "google/protobuf/unittest_mset.proto",
            "google/protobuf/unittest_no_field_presence.proto",
            "google/protobuf/unittest_no_generic_services.proto",
            "google/protobuf/unittest_optimize_for.proto",
            "google/protobuf/unittest_preserve_unknown_enum.proto",
            "google/protobuf/unittest_preserve_unknown_enum2.proto",
            "google/protobuf/unittest_proto3_arena_lite.proto",
            "google/protobuf/unittest_proto3_arena.proto",
            "google/protobuf/unittest_proto3_lite.proto",
            "google/protobuf/unittest_proto3_optional.proto",
            "google/protobuf/unittest_proto3.proto",
            "google/protobuf/unittest_retention.proto",
            "google/protobuf/unittest_well_known_types.proto",
            "google/protobuf/compiler/cpp/test_bad_identifiers.proto",
        ],
        strip_prefix = "protobuf-a74f54b724bdc2fe0bfc271f4dc0ceb159805625/src",
        type = "zip",
        # https://github.com/protocolbuffers/protobuf/releases/tag/v23.2
        urls = ["https://codeload.github.com/protocolbuffers/protobuf/zip/a74f54b724bdc2fe0bfc271f4dc0ceb159805625"],
    )