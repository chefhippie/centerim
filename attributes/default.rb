#
# Cookbook Name:: centerim
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["centerim"]["packages"] = value_for_platform_family(
  "debian" => %w(
    centerim-utf8
  ),
  "ubuntu" => %w(
    centerim-utf8
  ),
  "suse" => %w(
    centerim5
  )
)

default["centerim"]["zypper"]["alias"] = "tboerger"
default["centerim"]["zypper"]["title"] = "Home of Thomas Boerger"
default["centerim"]["zypper"]["repo"] = "http://download.opensuse.org/repositories/home:tboerger/openSUSE_#{node["platform_version"] == "12.1" ? "12.3" : node["platform_version"]}/"
default["centerim"]["zypper"]["key"] = "#{node["centerim"]["zypper"]["repo"]}repodata/repomd.xml.key"
