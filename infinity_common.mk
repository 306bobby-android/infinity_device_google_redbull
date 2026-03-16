#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

$(call soong_config_set,lineage_health,charging_control_charging_path,/sys/class/power_supply/sm7250_bms/charge_disable)
$(call soong_config_set,lineage_health,charging_control_charging_enabled,0)
$(call soong_config_set,lineage_health,charging_control_charging_disabled,1)
$(call soong_config_set,lineage_health,fast_charge_node,/sys/class/qcom-battery/restrict_chg)
$(call soong_config_set,lineage_health,fast_charge_value_none,1)
$(call soong_config_set,lineage_health,fast_charge_value_fast_charge,0)

# Relax artifact path requirements
PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/app/ViaBrowser/ViaBrowser.apk \
    system/fonts/RobotoFallback-VF.ttf \
    system/priv-app/OmniStyle/OmniStyle.apk
