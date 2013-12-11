<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>IN-ST-103P</Group> 
    <Version>1.0</Version> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Comments></Comments> 
    <Datasets>
        <Dataset>
            <Name>IN-ST-103DR_2</Name> 
            <SQL>SELECT * FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'IN' AND (Return_Code) = 'ST-103P' AND (Schedule_Code) = 'ST_103DR'</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>IN-ST-103DR</Name> 
        <Title>IN-ST-103DR</Title> 
        <Visible>True</Visible> 
        <Image>C:\apps\IGenFuels\FormImages\IN-ST-103DR.png</Image> 
        <FormType>Schedule</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>11</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>IN-ST-103DR_2</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>Qualified_Distributor</Name> 
                <Type>CheckBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>208</Top> 
                <Left>634</Left> 
                <Width>20</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sales_Tax_Return_Filing_Equals_ST-103</Name> 
                <Type>CHECKBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>257</Top> 
                <Left>399</Left> 
                <Width>23</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sales_Tax_Return_Filing_Equals_ST-103MP</Name> 
                <Type>CHECKBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>257</Top> 
                <Left>495</Left> 
                <Width>20</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sales_Tax_Return_Filing_Equals_None</Name> 
                <Type>CHECKBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>257</Top> 
                <Left>561</Left> 
                <Width>20</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>377</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):1 DS(Seller_Address_2):1 DS(Seller_City):1 DS(Seller_State):1 DS(Seller_Postal_Code):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>377</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Federal_ID_Number_1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>377</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_1</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>377</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_1</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>377</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Check_if_Business_Permanently_Closed_Equals_Yes</Name> 
                <Type>CheckBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsCheckBox_61</Image> 
                <Top>1020</Top> 
                <Left>75</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Taxpayer_Identification_Number</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>3420934092</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>145</Top> 
                <Left>56</Left> 
                <Width>271</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>For_Tax_Period_Month</Name> 
                <Type>TextBox </Type> 
                <DataType>DATE </DataType> 
                <Visible>True </Visible> 
                <Text>12</Text> 
                <Caption>12</Caption> 
                <Value>12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>145</Top> 
                <Left>334</Left> 
                <Width>95</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>For_Tax_Period_Year</Name> 
                <Type>TextBox </Type> 
                <DataType>DATE </DataType> 
                <Visible>True </Visible> 
                <Text>2013</Text> 
                <Caption>2013</Caption> 
                <Value>2013</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>145</Top> 
                <Left>444</Left> 
                <Width>127</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Federal_Identification_Number</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>233542665</Text> 
                <Caption>233542665</Caption> 
                <Value>233542665</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>144</Top> 
                <Left>581</Left> 
                <Width>216</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Taxpayer_Name</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>John Doe</Text> 
                <Caption>John Doe</Caption> 
                <Value>John Doe</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>179</Top> 
                <Left>56</Left> 
                <Width>273</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Doing_Business_as_Name_DBA</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Fuel Inc.</Text> 
                <Caption>Fuel Inc.</Caption> 
                <Value>Fuel Inc.</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>180</Top> 
                <Left>335</Left> 
                <Width>238</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Telephone_Number</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>68758675</Text> 
                <Caption>68758675</Caption> 
                <Value>68758675</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>179</Top> 
                <Left>581</Left> 
                <Width>216</Width> 
                <Height>15</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Street_Address_City_State_Zip_Code</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>201 Lake Street, Peshtigo, WI 54021</Text> 
                <Caption>201 Lake Street, Peshtigo, WI 54021</Caption> 
                <Value>201 Lake Street, Peshtigo, WI 54021</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>215</Top> 
                <Left>54</Left> 
                <Width>440</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>408</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):2 DS(Seller_Address_2):2 DS(Seller_City):2 DS(Seller_State):2 DS(Seller_Postal_Code):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>408</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>408</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_2</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>408</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_2</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>408</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>439</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):3 DS(Seller_Address_2):3 DS(Seller_City):3 DS(Seller_State):3 DS(Seller_Postal_Code):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>439</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>439</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_3</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>439</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_3</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>439</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>470</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):4 DS(Seller_Address_2):4 DS(Seller_City):4 DS(Seller_State):4 DS(Seller_Postal_Code):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>470</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>470</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_4</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>470</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_4</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>470</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>502</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):5 DS(Seller_Address_2):5 DS(Seller_City):5 DS(Seller_State):5 DS(Seller_Postal_Code):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>502</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>502</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_5</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>502</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_5</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>502</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>532</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):6 DS(Seller_Address_2):6 DS(Seller_City):6 DS(Seller_State):6 DS(Seller_Postal_Code):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>532</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>532</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_6</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>532</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_6</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>532</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>564</Top> 
                <Left>53</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):7 DS(Seller_Address_2):7 DS(Seller_City):7 DS(Seller_State):7 DS(Seller_Postal_Code):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>564</Top> 
                <Left>203</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>564</Top> 
                <Left>353</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_7</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>564</Top> 
                <Left>503</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_7</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>564</Top> 
                <Left>652</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>596</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):8 DS(Seller_Address_2):8 DS(Seller_City):8 DS(Seller_State):8 DS(Seller_Postal_Code):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>596</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>596</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_8</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>596</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_8</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>596</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>10_Name_of_Supplier_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>626</Top> 
                <Left>54</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Address_of_Supplier_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Address_1):9 DS(Seller_Address_2):9 DS(Seller_City):9 DS(Seller_State):9 DS(Seller_Postal_Code):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>626</Top> 
                <Left>204</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>12_Supplier_Federal_ID_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>626</Top> 
                <Left>354</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Purchased_9</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>626</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_Sales_Tax_Paid_to_Supplier_9</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>626</Top> 
                <Left>653</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Gallons_Purchased</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=sum(Total_Gallons_Purchased_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>658</Top> 
                <Left>504</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Grand_Total_Prepaid_Sales_Tax_Paid_to_Supplier</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=Sum(Prepaid_Sales_Tax_Paid_to_Supplier_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>657</Top> 
                <Left>654</Left> 
                <Width>142</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Month</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>12</Text> 
                <Caption>12</Caption> 
                <Value>12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>1016</Top> 
                <Left>671</Left> 
                <Width>30</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Day</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>02</Text> 
                <Caption>02</Caption> 
                <Value>02</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>1016</Top> 
                <Left>707</Left> 
                <Width>30</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Year</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2013</Text> 
                <Caption>2013</Caption> 
                <Value>2013</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsTextBox_65</Image> 
                <Top>1016</Top> 
                <Left>743</Left> 
                <Width>50</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Non-Qualified_Distributor</Name> 
                <Type>CHECKBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>229</Top> 
                <Left>662</Left> 
                <Width>20</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>IN-ST-103DR_2</Name> 
        <Title>IN-ST-103DR_2</Title> 
        <Visible>True</Visible> 
        <Image>C:\apps\IGenFuels\FormImages\IN-ST-103DR_p2.png</Image> 
        <FormType>Schedule</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>11</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>IN-ST-103DR_2</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>Customers_Name_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):1 DS(Purchaser_Address_2):1 DS(Purchaser_City):1 DS(Purchaser_State):1 DS(Purchaser_Postal_Code):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_1</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_1</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_1</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>110</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>388</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_2</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>554</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_2</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>=DS(Purchaser_Address_1):3 DS(Purchaser_Address_2):3 DS(Purchaser_City):3 DS(Purchaser_State):3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):3 DS(Purchaser_Address_2):3 DS(Purchaser_City):3 DS(Purchaser_State):3 DS(Purchaser_Postal_Code):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_3</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_3</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_3</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>185</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):2 DS(Purchaser_Address_2):2 DS(Purchaser_City):2 DS(Purchaser_State):2 DS(Purchaser_Postal_Code):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_2</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_2</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):4 DS(Purchaser_Address_2):4 DS(Purchaser_City):4 DS(Purchaser_State):4 DS(Purchaser_Postal_Code):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_4</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_4</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_4</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>224</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):5 DS(Purchaser_Address_2):5 DS(Purchaser_City):5 DS(Purchaser_State):5 DS(Purchaser_Postal_Code):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_5</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_5</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_5</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>261</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):6 DS(Purchaser_Address_2):6 DS(Purchaser_City):6 DS(Purchaser_State):6 DS(Purchaser_Postal_Code):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_6</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_6</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_6</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>299</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):7 DS(Purchaser_Address_2):7 DS(Purchaser_City):7 DS(Purchaser_State):7 DS(Purchaser_Postal_Code):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_7</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_7</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_7</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>336</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):8 DS(Purchaser_Address_2):8 DS(Purchaser_City):8 DS(Purchaser_State):8 DS(Purchaser_Postal_Code):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_8</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_8</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_8</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>374</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):9 DS(Purchaser_Address_2):9 DS(Purchaser_City):9 DS(Purchaser_State):9 DS(Purchaser_Postal_Code):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_9</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_9</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_9</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>411</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):10 DS(Purchaser_Address_2):10 DS(Purchaser_City):10 DS(Purchaser_State):10 DS(Purchaser_Postal_Code):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_10</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_10</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_10</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>448</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Name_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>55</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Address_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Address_1):11 DS(Purchaser_Address_2):11 DS(Purchaser_City):11 DS(Purchaser_State):11 DS(Purchaser_Postal_Code):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>220</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Customers_Federal_ID_Number_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Gov_ID):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>387</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_11</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Billed_Quantity):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>553</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_11</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Exempt_Billed_Quantity):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>719</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_11</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>485</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Total_Gallons_Sold_Cumulative_Total</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=Sum(Total_Gallons_Sold_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>524</Top> 
                <Left>554</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Exempt_Gallons_Sold_Cumulative_Total</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=Sum(Exempt_Gallons_Sold_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>524</Top> 
                <Left>720</Left> 
                <Width>160</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_Cumulative_Total</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=Sum(Prepaid_RST_Collected_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>524</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Printed_Name</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>John Doe</Text> 
                <Caption>John Doe</Caption> 
                <Value>John Doe</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsTextBox_80</Image> 
                <Top>729</Top> 
                <Left>58</Left> 
                <Width>317</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Authorized_Signature</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>John Doe</Text> 
                <Caption>John Doe</Caption> 
                <Value>John Doe</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsTextBox_81</Image> 
                <Top>729</Top> 
                <Left>410</Left> 
                <Width>311</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Title</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>President</Text> 
                <Caption>President</Caption> 
                <Value>President</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsTextBox_82</Image> 
                <Top>729</Top> 
                <Left>733</Left> 
                <Width>180</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date</Name> 
                <Type>TextBox </Type> 
                <DataType>DATE </DataType> 
                <Visible>True </Visible> 
                <Text>December 2, 2013</Text> 
                <Caption>December 2, 2013</Caption> 
                <Value>December 2, 2013</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsTextBox_83</Image> 
                <Top>729</Top> 
                <Left>933</Left> 
                <Width>108</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Prepaid_RST_Collected_2</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Tax_Collected):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>148</Top> 
                <Left>886</Left> 
                <Width>159</Width> 
                <Height>33</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>IN-ST-103P</Name> 
        <Title>IN-ST-103P</Title> 
        <Visible>True</Visible> 
        <Image>C:\apps\IGenFuels\FormImages\IN-ST-103P.png</Image> 
        <FormType>Return</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>IN-ST-103DR_2</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>Authorized_Signature</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>John Doe</Text> 
                <Caption>John Doe</Caption> 
                <Value>John Doe</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsTextBox_1</Image> 
                <Top>85</Top> 
                <Left>100</Left> 
                <Width>186</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date</Name> 
                <Type>TextBox </Type> 
                <DataType>DATE </DataType> 
                <Visible>True </Visible> 
                <Text>12-2-2013</Text> 
                <Caption>12-2-2013</Caption> 
                <Value>12-2-2013</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsTextBox_2</Image> 
                <Top>122</Top> 
                <Left>77</Left> 
                <Width>60</Width> 
                <Height>14</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Phone_Number</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>920-344-9978</Text> 
                <Caption>920-344-9978</Caption> 
                <Value>920-344-9978</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsTextBox_3</Image> 
                <Top>122</Top> 
                <Left>187</Left> 
                <Width>98</Width> 
                <Height>16</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>8</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.1.A</Name> 
                <Type>TextBox </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>5000</Text> 
                <Caption>5000</Caption> 
                <Value>5000</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsTextBox_4</Image> 
                <Top>60</Top> 
                <Left>595</Left> 
                <Width>167</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.2.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>2000</Text> 
                <Caption>2000</Caption> 
                <Value>2000</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsTextBox_4</Image> 
                <Top>86</Top> 
                <Left>595</Left> 
                <Width>167</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.3.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[IN-ST-103P!1.0.1.A] - [IN-ST-103P!1.0.2.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>113</Top> 
                <Left>595</Left> 
                <Width>167</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.4.A</Name> 
                <Type>Label </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[IN-ST-103P!1.0.3.A] * .177</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>139</Top> 
                <Left>595</Left> 
                <Width>202</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.5.A</Name> 
                <Type>TextBox </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text>1.34</Text> 
                <Caption>1.34</Caption> 
                <Value>1.34</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsTextBox_8</Image> 
                <Top>168</Top> 
                <Left>595</Left> 
                <Width>202</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.6.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text>25.33</Text> 
                <Caption>25.33</Caption> 
                <Value>25.33</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsTextBox_8</Image> 
                <Top>195</Top> 
                <Left>595</Left> 
                <Width>202</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.7.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text>2.55</Text> 
                <Caption>2.55</Caption> 
                <Value>2.55</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsTextBox_8</Image> 
                <Top>222</Top> 
                <Left>594</Left> 
                <Width>202</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[IN-ST-103P!1.0.4.A] + [IN-ST-103P!1.0.5.A] - [IN-ST-103P!1.0.6.A] + [IN-ST-103P!1.0.7.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>255</Top> 
                <Left>614</Left> 
                <Width>181</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>499</Top> 
                <Left>162</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>530</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>561</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>592</Top> 
                <Left>164</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>624</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>656</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>687</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>718</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>751</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>784</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>816</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>ID_Type_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Gov_ID_Type):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>848</Top> 
                <Left>165</Left> 
                <Width>46</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_1</Name> 
                <Type>ComboBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>500</Top> 
                <Left>32</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_7</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>691</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_3</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>562</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_4</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>593</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_5</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>625</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_6</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>657</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_7</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>691</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_7</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>768</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_1</Name> 
                <Type>TextBox </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>400</Text> 
                <Caption>400</Caption> 
                <Value>400</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>499</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_2</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>366</Text> 
                <Caption>366</Caption> 
                <Value>366</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>530</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_3</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>561</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>591</Top> 
                <Left>234</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_5</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>624</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_6</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>656</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_7</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>687</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_8</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>718</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_9</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>751</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_10</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>784</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_11</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>816</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Gallons_Sold_12</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>848</Top> 
                <Left>235</Left> 
                <Width>64</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text>3.19</Text> 
                <Caption>3.19</Caption> 
                <Value>3.19</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>499</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_2</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text>3.19</Text> 
                <Caption>3.19</Caption> 
                <Value>3.19</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>530</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_3</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>561</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>592</Top> 
                <Left>338</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_5</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>624</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_6</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>656</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_7</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>687</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_8</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>718</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_9</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>751</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_10</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>784</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_11</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>816</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amount_Paid_12</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsTextBox_73</Image> 
                <Top>848</Top> 
                <Left>341</Left> 
                <Width>75</Width> 
                <Height>24</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_1</Name> 
                <Type>ComboBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>499</Top> 
                <Left>451</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_2</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>530</Top> 
                <Left>451</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_3</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>561</Top> 
                <Left>451</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_4</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>590</Top> 
                <Left>452</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_5</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>624</Top> 
                <Left>452</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_6</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>656</Top> 
                <Left>453</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_7</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>687</Top> 
                <Left>452</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_8</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>718</Top> 
                <Left>453</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_9</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>751</Top> 
                <Left>453</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_10</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>784</Top> 
                <Left>454</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_11</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>816</Top> 
                <Left>454</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Business_Name_12</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Name From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>A Dui Cras Incorporated|A Ultricies Adipiscing PC|Felis Viverra Institute|Iaculis Aliquet Diam Foundation|Lacus Ut Nec LLC|Ligula Nullam Consulting|Ligula Nullam Foundation|Nibh Lacinia Corporation|Orci Inc.|Sagittis Corporation|</List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsComboBox_73</Image> 
                <Top>848</Top> 
                <Left>454</Left> 
                <Width>124</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_Taxpayer_ID_2</Name> 
                <Type>COMBOBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select Distinct Seller_Gov_ID From WSTF WHERE Filing_Jurisdiction = 'IN' AND Return_Code = 'ST-103P')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>210554506|280723227|321638665|352054165|381753712|590625246|591483660|720828502|770363500|</List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsComboBox_60</Image> 
                <Top>531</Top> 
                <Left>33</Left> 
                <Width>117</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
</Forms> 
