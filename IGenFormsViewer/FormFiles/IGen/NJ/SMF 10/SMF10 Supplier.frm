<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>NJSupplier</Group> 
    <Version>1.0</Version> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Comments></Comments> 
    <Datasets>
        <Dataset>
            <Name>MAIN</Name> 
            <SQL>SELECT TOP 10 * FROM VW_WSTF</SQL> 
        </Dataset>
        <Dataset>
            <Name>TEST</Name> 
            <SQL>SELECT TOP 1     SELLER_NAME,      SELLER_GOV_ID     FROM VW_WSTF GROUP BY SELLER_NAME, SELLER_GOV_ID</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>SMF10</Name> 
        <Title>SMF 10</Title> 
        <Visible>True</Visible> 
        <Image>C:\IGenFuels_QA\FormImages\NJ_SMF10.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>MAIN</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_3</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=ds(purchaser_name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>299</Top> 
                <Left>50</Left> 
                <Width>271</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsLabel_4</Name> 
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
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>382</Top> 
                <Left>50</Left> 
                <Width>194</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsLabel_5</Name> 
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
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>381</Top> 
                <Left>316</Left> 
                <Width>114</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsLabel_4</Name> 
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
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>382</Top> 
                <Left>50</Left> 
                <Width>194</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsLabel_5</Name> 
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
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>381</Top> 
                <Left>316</Left> 
                <Width>114</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsLabel_6</Name> 
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
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>382</Top> 
                <Left>602</Left> 
                <Width>114</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.1.A</Name> 
                <Type>LABEL </Type> 
                <DataType>CURRENCY </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[SMF100!Page1.1.12.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>519</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
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
                <Name>Page1.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[SMF100!Page1.1.16.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>561</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[Taxable_LPG_Gallons] * 0.0525</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>599</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>630</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[Page1.1.1.A] + [Page1.1.2.A] + [Page1.1.3.A] + [Page1.1.4.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>670</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>6</Layer> 
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
                <Name>Page1.1.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[Page1.1.5.A] + [Page1.1.6.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>749</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>6</Layer> 
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
                <Name>tbrControlsLabel_8</Name> 
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
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>920</Top> 
                <Left>501</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>tbrControlsLabel_9</Name> 
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
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>990</Top> 
                <Left>501</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>tbrControlsLabel_10</Name> 
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
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>990</Top> 
                <Left>703</Left> 
                <Width>98</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>tbrControlsLabel_9</Name> 
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
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>990</Top> 
                <Left>501</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>tbrControlsTextBox_20</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=MONTHNAME(DS(BOL_DATE))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>118</Top> 
                <Left>541</Left> 
                <Width>100</Width> 
                <Height>38</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsTextBox_21</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=YEAR(DS(BOL_DATE))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsTextBox_20</Image> 
                <Top>118</Top> 
                <Left>692</Left> 
                <Width>100</Width> 
                <Height>38</Height> 
                <Alignment></Alignment> 
                <Layer>5</Layer> 
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
                <Name>tbrControlsCheckBox_20</Name> 
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
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsCheckBox_20</Image> 
                <Top>434</Top> 
                <Left>198</Left> 
                <Width>41</Width> 
                <Height>39</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>tbrControlsCheckBox_21</Name> 
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
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsCheckBox_20</Image> 
                <Top>434</Top> 
                <Left>484</Left> 
                <Width>41</Width> 
                <Height>39</Height> 
                <Alignment></Alignment> 
                <Layer>4</Layer> 
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
                <Name>Taxable_LPG_Gallons</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsTextBox_23</Image> 
                <Top>599</Top> 
                <Left>203</Left> 
                <Width>65</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.6.A</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsTextBox_23</Image> 
                <Top>711</Top> 
                <Left>493</Left> 
                <Width>182</Width> 
                <Height>20</Height> 
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
                <Name>tbrControlsComboBox_23</Name> 
                <Type>ComboBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List>=sql(select name from companies)</List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsComboBox_23</Image> 
                <Top>46</Top> 
                <Left>110</Left> 
                <Width>100</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
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
                <Name>tbrControlsComboBox_24</Name> 
                <Type>ComboBox </Type> 
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
                <Image>tbrControlsComboBox_24</Image> 
                <Top>53</Top> 
                <Left>317</Left> 
                <Width>100</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
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
        <Name>SMF100</Name> 
        <Title>SMF 100</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\NJ\pngs\NJ_SMF100.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>1</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>MAIN</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_3</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(SELLER_GOV_ID)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>128</Top> 
                <Left>828</Left> 
                <Width>242</Width> 
                <Height>34</Height> 
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
                <Name>tbrControlsLabel_4</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(SELLER_NAME)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>125</Top> 
                <Left>639</Left> 
                <Width>185</Width> 
                <Height>34</Height> 
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
                <Name>tbrControlsLabel_5</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(select igf.GetCurrentTaxRate('DS(Filing_Jurisdiction)',DS(Filing_Period),'ST-ALW1') as CurrentRate)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>291</Top> 
                <Left>177</Left> 
                <Width>211</Width> 
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
                <Name>tbrControlsLabel_6</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>JOHNSONVILLE</Text> 
                <Caption>JOHNSONVILLE</Caption> 
                <Value>=if(ds(Origin_Type) = 'FCN' ,     ds(Origin_FCN),     ds(Origin_City)','   ds(Origin_State))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>290</Top> 
                <Left>594</Left> 
                <Width>150</Width> 
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
                <Name>Page1.1.1.B</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF201' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>375</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.1.A</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF101' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>375</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF202' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>397</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF102' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>397</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) IN ('SMF212A', 'SMF212B', 'SMF212C') and (Product) = '130')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>420</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) IN ('SMF112A', 'SMF112B', 'SMF112C') and (Product) = '125')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>420</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF209' AND (Product) IN ('072', '073', '074', '153', '226', '227', '231', '290'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>441</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.5.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF203' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>464</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF103' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>464</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>= [Page1.1.1.B] + [Page1.1.2.B] + [Page1.1.3.B] + [Page1.1.4.B] + [Page1.1.5.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>488</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>= [Page1.1.1.A] + [Page1.1.2.A] + [Page1.1.3.A] + [Page1.1.5.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>488</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF204' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>534</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF104' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>534</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF205' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>556</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF105' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>556</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF210' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284')) * -1)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>579</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF110' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))*-1)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>579</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF211' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>599</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF111' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>599</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.11.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>= [Page1.1.7.B] + [Page1.1.8.B] + [Page1.1.9.B] + [Page1.1.10.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>622</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.11.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>= [Page1.1.7.A] + [Page1.1.8.A] + [Page1.1.9.A] + [Page1.1.10.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>622</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.12.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[Page1.1.11.B] * .135</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>671</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
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
                <Name>Page1.1.12.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=[Page1.1.11.A] * .105</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>671</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
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
                <Name>Page1.1.14.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF207' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284')) * -1)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>716</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.14.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF107' AND (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243')))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>716</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.15.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF208' AND (Product) IN ('142', '145', '147', '154', '160', '161', '167', '282', '283', '284')) * -1)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>736</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.15.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.00</Text> 
                <Caption>0.00</Caption> 
                <Value>=SQL(Select (SELECT SUM(Net_Quantity) FROM WSTF WHERE (Filing_Jurisdiction) = 'NJ' AND (Return_Code) = 'SMF 10' AND  (Schedule_Code) = 'SMF108' and (Product) IN ('065', '071', '078', '079', '123', '124', '139', '140', '141', '241', '243')))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>736</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.16.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=IF(([Page1.1.12.B] + [Page1.1.13.B] + [Page1.1.14.B] + [Page1.1.15.B]) > 0, ([Page1.1.12.B] + [Page1.1.13.B] + [Page1.1.14.B] + [Page1.1.15.B]), 0)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>761</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
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
                <Name>Page1.1.16.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0</Text> 
                <Caption>0</Caption> 
                <Value>=IF(([Page1.1.12.A] - [Page1.1.13.A] - [Page1.1.14.A] - [Page1.1.15.A]) > 0, ([Page1.1.12.A] - [Page1.1.13.A] - [Page1.1.14.A] - [Page1.1.15.A]), 0)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>761</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
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
                <Name>Page1.1.17.B</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=IF([1.1.16.B] > 0, 0, ([1.1.16.B] * -1))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>782</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.17.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=IF([1.1.16.A] > 0, 0, ([1.1.16.A] * -1))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>782</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
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
                <Name>Page1.1.13.A</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsTextBox_38</Image> 
                <Top>693</Top> 
                <Left>744</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
                <Name>Page1.1.13.B</Name> 
                <Type>TextBox </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsTextBox_39</Image> 
                <Top>693</Top> 
                <Left>911</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
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
</Forms> 
