/*
 * Copyright 2013 Klarna AB
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cat.ddsw.hivetest.udf;

import com.cat.ddsw.hivetest.util.HiveProperties;
import com.klarna.hiverunner.HiveShell;

public class HiveUDFUtil {

    public static void loadHiveUDFs(HiveShell hiveShell) {

        hiveShell.execute(
                HiveProperties.getInstance().getProperty("hive.custom.utc_timestamp.udf") + "\n" +
                HiveProperties.getInstance().getProperty("hive.format_mr_timestamp.udf") + "\n");
        System.out.println("Hive UDFs loaded : SUCCESS!!");
    }
}
