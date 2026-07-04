# Copyright (C) 2025 E FOUNDATION
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/%

# Android Auto Stubs specific for API level > 34
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -gt 34; echo $$?),0)
PRODUCT_PACKAGES += \
    AndroidAutoStub
endif

PRODUCT_PACKAGES += \
    Ntfy \
    Talkback \
    FDroidPrivilegedExtension \

# Optional applications
MINIMAL_APPS ?= false

ifeq ($(MINIMAL_APPS),false)
PRODUCT_PACKAGES += OpenKeychain
endif
