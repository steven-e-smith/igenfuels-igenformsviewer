<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>PET 350</Group> 
    <Version>1.0</Version> 
    <Datasource>server=192.168.30.111;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Datasets>
        <Dataset>
            <Name>Company</Name> 
            <SQL>select * from companies</SQL> 
        </Dataset>
        <Dataset>
            <Name>WSTF</Name> 
            <SQL>Select top 10 * from vw_wstf where seller_address_1 <> ''</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>PET 350</Name> 
        <Title>PET 350</Title> 
        <Visible>True</Visible> 
        <Image>PET350.PNG</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>WSTF</DataSetName> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>1.0.1A.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.2.3.G - 2.3.11a.G) * ERR</Text> 
                <Caption>Multiply: (2.2.3.G - 2.3.11a.G) * ERR</Caption> 
                <Value>Multiply: (2.2.3.G - 2.3.11a.G) * [TN-ST-EXP]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.1B.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.3.15.G + 2.2.6.G) * ERR</Text> 
                <Caption>Multiply: (2.3.15.G + 2.2.6.G) * ERR</Caption> 
                <Value>Multiply: (2.3.15.G + 2.2.6.G) * [TN-ST-INS]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.1C.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.3.15.G + 2.2.6.G) * ERR</Text> 
                <Caption>Multiply: (2.3.15.G + 2.2.6.G) * ERR</Caption> 
                <Value>Multiply: (2.3.15.G + 2.2.6.G) * [TN-ST-ENV]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.1D.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: 2.3.15.A * ERR</Text> 
                <Caption>Multiply: 2.3.15.A * ERR</Caption> 
                <Value>Multiply: 2.3.15.A * [TN-ST-GAS]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.1E.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.3.15.E + 2.2.1a.D) * ERR</Text> 
                <Caption>Multiply: (2.3.15.E + 2.2.1a.D) * ERR</Caption> 
                <Value>Multiply: (2.3.15.E + 2.2.1a.D) * [TN-ST-DSL]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 1.0.1A.A, 1.0.1B.A</Text> 
                <Caption>Sum: 1.0.1A.A, 1.0.1B.A</Caption> 
                <Value>Sum: 1.0.1A.A, 1.0.1B.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Repeat: 1.0.1C.B</Text> 
                <Caption>Repeat: 1.0.1C.B</Caption> 
                <Value>Repeat: 1.0.1C.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Repeat: 1.0.1D.C</Text> 
                <Caption>Repeat: 1.0.1D.C</Caption> 
                <Value>Repeat: 1.0.1D.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Repeat: 1.0.1E.D</Text> 
                <Caption>Repeat: 1.0.1E.D</Caption> 
                <Value>Repeat: 1.0.1E.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.3.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>Multiply: 1.0.2.C * -[TN-ST-ALW-ADMIN]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.3.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.3.D</Text> 
                <Caption>1.0.3.D</Caption> 
                <Value>Multiply: 1.0.2.D * -[TN-ST-ALW-ADMIN]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.4.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.4.C</Text> 
                <Caption>1.0.4.C</Caption> 
                <Value>Multiply: 1.0.2.C * -[TN-ST-ALW-TARE]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.4.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.4.D</Text> 
                <Caption>1.0.4.D</Caption> 
                <Value>Multiply: 1.0.2.D * -[TN-ST-ALW-TARE]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 1.0.3.C, 1.0.4.C</Text> 
                <Caption>Sum: 1.0.3.C, 1.0.4.C</Caption> 
                <Value>Sum: 1.0.3.C, 1.0.4.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.5.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 1.0.3.D, 1.0.4.D</Text> 
                <Caption>Sum: 1.0.3.D, 1.0.4.D</Caption> 
                <Value>Sum: 1.0.3.D, 1.0.4.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.3.11a.A + 2.3.11b.A) * ERR * -ERR</Text> 
                <Caption>Multiply: (2.3.11a.A + 2.3.11b.A) * ERR * -ERR</Caption> 
                <Value>Multiply: (2.3.11a.A + 2.3.11b.A) * [TN-ST-GAS] * -[TN-ST-ALW-TARE]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.6.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Multiply: (2.3.11a.E + 2.3.11b.E) * ERR * -ERR</Text> 
                <Caption>Multiply: (2.3.11a.E + 2.3.11b.E) * ERR * -ERR</Caption> 
                <Value>Multiply: (2.3.11a.E + 2.3.11b.E) * [TN-ST-DSL] * -[TN-ST-ALW-TARE]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.2.A + 1.0.6.A - 1.0.5.A</Text> 
                <Caption>1.0.2.A + 1.0.6.A - 1.0.5.A</Caption> 
                <Value>1.0.2.A + 1.0.6.A - 1.0.5.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.2.B + 1.0.6.B - 1.0.5.B</Text> 
                <Caption>1.0.2.B + 1.0.6.B - 1.0.5.B</Caption> 
                <Value>1.0.2.B + 1.0.6.B - 1.0.5.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.2.C + 1.0.6.C - 1.0.5.C</Text> 
                <Caption>1.0.2.C + 1.0.6.C - 1.0.5.C</Caption> 
                <Value>1.0.2.C + 1.0.6.C - 1.0.5.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.2.D + 1.0.6.D - 1.0.5.D</Text> 
                <Caption>1.0.2.D + 1.0.6.D - 1.0.5.D</Caption> 
                <Value>1.0.2.D + 1.0.6.D - 1.0.5.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.8.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 1.0.7.A + 1.0.7.B + 1.0.7.C + 1.0.7.D</Text> 
                <Caption>Sum: 1.0.7.A + 1.0.7.B + 1.0.7.C + 1.0.7.D</Caption> 
                <Value>Sum: 1.0.7.A + 1.0.7.B + 1.0.7.C + 1.0.7.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.9.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.9.D</Text> 
                <Caption>1.0.9.D</Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.10.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.10.D</Text> 
                <Caption>1.0.10.D</Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.11.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.11.D</Text> 
                <Caption>1.0.11.D</Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.0.12.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.0.8.D + 1.0.10.D + 1.0.11D - 1.0.9.D  If this value is negative, leave this cell blank.</Text> 
                <Caption>1.0.8.D + 1.0.10.D + 1.0.11D - 1.0.9.D  If this value is negative, leave this cell blank.</Caption> 
                <Value>1.0.8.D + 1.0.10.D + 1.0.11D - 1.0.9.D  If this value is negative, leave this cell blank.</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_27</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute, 352054165, SA1,  SA2, City, WI, 12345</Text> 
                <Caption>Felis Viverra Institute, 352054165, SA1,  SA2, City, WI, 12345</Caption> 
                <Value>=DS(Seller_Name):4, DS(Seller_Gov_Id):4, DS(Seller_Address_1):4,  DS(Seller_Address_2):4, DS(Seller_City):4, DS(Seller_State):4, DS(Seller_Postal_Code):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>0</Top> 
                <Left>0</Left> 
                <Width>625</Width> 
                <Height>50</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>12</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>PET 350_2</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image>PET350_3.PNG</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>2.1.1.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.A</Text> 
                <Caption>2.1.1.A</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.B</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.B</Text> 
                <Caption>2.1.1.B</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.C</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.C</Text> 
                <Caption>2.1.1.C</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.D</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.D</Text> 
                <Caption>2.1.1.D</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.E</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.E</Text> 
                <Caption>2.1.1.E</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.F</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.1.F</Text> 
                <Caption>2.1.1.F</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Text> 
                <Caption>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Caption> 
                <Value>Sch 2 Total Net Quantity + Sch 2C Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Text> 
                <Caption>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Caption> 
                <Value>Sch 4 Total Net Quantity + Sch 4B Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.A, 2.1.3.A, 2.1.4.A, 2.1.5.A</Text> 
                <Caption>Sum: 2.1.1.A, 2.1.3.A, 2.1.4.A, 2.1.5.A</Caption> 
                <Value>Sum: 2.1.1.A, 2.1.3.A, 2.1.4.A, 2.1.5.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.B, 2.1.3.B, 2.1.4.B, 2.1.5.B</Text> 
                <Caption>Sum: 2.1.1.B, 2.1.3.B, 2.1.4.B, 2.1.5.B</Caption> 
                <Value>Sum: 2.1.1.B, 2.1.3.B, 2.1.4.B, 2.1.5.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.C, 2.1.2.C, 2.1.3.C, 2.1.4.C, 2.1.5.C</Text> 
                <Caption>Sum: 2.1.1.C, 2.1.2.C, 2.1.3.C, 2.1.4.C, 2.1.5.C</Caption> 
                <Value>Sum: 2.1.1.C, 2.1.2.C, 2.1.3.C, 2.1.4.C, 2.1.5.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.D, 2.1.2.D, 2.1.3.D, 2.1.4.D, 2.1.5.D</Text> 
                <Caption>Sum: 2.1.1.D, 2.1.2.D, 2.1.3.D, 2.1.4.D, 2.1.5.D</Caption> 
                <Value>Sum: 2.1.1.D, 2.1.2.D, 2.1.3.D, 2.1.4.D, 2.1.5.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.E, 2.1.2.E, 2.1.3.E, 2.1.4.E, 2.1.5.E</Text> 
                <Caption>Sum: 2.1.1.E, 2.1.2.E, 2.1.3.E, 2.1.4.E, 2.1.5.E</Caption> 
                <Value>Sum: 2.1.1.E, 2.1.2.E, 2.1.3.E, 2.1.4.E, 2.1.5.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.1.F, 2.1.2.F, 2.1.3.F, 2.1.4.F, 2.1.5.F</Text> 
                <Caption>Sum: 2.1.1.F, 2.1.2.F, 2.1.3.F, 2.1.4.F, 2.1.5.F</Caption> 
                <Value>Sum: 2.1.1.F, 2.1.2.F, 2.1.3.F, 2.1.4.F, 2.1.5.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.6.A, 2.1.6.B, 2.1.6.C, 2.1.6.D, 2.1.6.E, 2.1.6.F</Text> 
                <Caption>Sum: 2.1.6.A, 2.1.6.B, 2.1.6.C, 2.1.6.D, 2.1.6.E, 2.1.6.F</Caption> 
                <Value>Sum: 2.1.6.A, 2.1.6.B, 2.1.6.C, 2.1.6.D, 2.1.6.E, 2.1.6.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1a.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.1b.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.2.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Text> 
                <Caption>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Caption> 
                <Value>Sch 6D Total Net Quantity + Sch 6H Total Net Quantity + Sch 6J Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.3.A, 2.2.3.B, 2.2.3.C, 2.2.3.D, 2.2.3.E, 2.2.3.F</Text> 
                <Caption>Sum: 2.2.3.A, 2.2.3.B, 2.2.3.C, 2.2.3.D, 2.2.3.E, 2.2.3.F</Caption> 
                <Value>Sum: 2.2.3.A, 2.2.3.B, 2.2.3.C, 2.2.3.D, 2.2.3.E, 2.2.3.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.3R.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.4.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.5.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.6.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.6.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.6.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.6.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.6.A, 2.2.6.B, 2.2.6.C, 2.2.6.D, 2.2.6.E, 2.2.6.F</Text> 
                <Caption>Sum: 2.2.6.A, 2.2.6.B, 2.2.6.C, 2.2.6.D, 2.2.6.E, 2.2.6.F</Caption> 
                <Value>Sum: 2.2.6.A, 2.2.6.B, 2.2.6.C, 2.2.6.D, 2.2.6.E, 2.2.6.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.2.2.A, 2.2.3.A, 2.2.3R.A, 2.2.4.A, 2.2.5.A, 2.2.6.A</Text> 
                <Caption>Sum: 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.2.2.A, 2.2.3.A, 2.2.3R.A, 2.2.4.A, 2.2.5.A, 2.2.6.A</Caption> 
                <Value>Sum: 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.2.2.A, 2.2.3.A, 2.2.3R.A, 2.2.4.A, 2.2.5.A, 2.2.6.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.2.2.B, 2.2.3.B, 2.2.3R.B, 2.2.4.B, 2.2.5.B, 2.2.6.B</Text> 
                <Caption>Sum: 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.2.2.B, 2.2.3.B, 2.2.3R.B, 2.2.4.B, 2.2.5.B, 2.2.6.B</Caption> 
                <Value>Sum: 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.2.2.B, 2.2.3.B, 2.2.3R.B, 2.2.4.B, 2.2.5.B, 2.2.6.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.2.2.C, 2.2.3.C, 2.2.3R.C, 2.2.4.C, 2.2.5.C, 2.2.6.C</Text> 
                <Caption>Sum: 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.2.2.C, 2.2.3.C, 2.2.3R.C, 2.2.4.C, 2.2.5.C, 2.2.6.C</Caption> 
                <Value>Sum: 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.2.2.C, 2.2.3.C, 2.2.3R.C, 2.2.4.C, 2.2.5.C, 2.2.6.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.2.2.D, 2.2.3.D, 2.2.3R.D, 2.2.4.D, 2.2.5.D, 2.2.6.D</Text> 
                <Caption>Sum: 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.2.2.D, 2.2.3.D, 2.2.3R.D, 2.2.4.D, 2.2.5.D, 2.2.6.D</Caption> 
                <Value>Sum: 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.2.2.D, 2.2.3.D, 2.2.3R.D, 2.2.4.D, 2.2.5.D, 2.2.6.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.2.2.E, 2.2.3.E, 2.2.3R.E, 2.2.4.E, 2.2.5.E, 2.2.6.E</Text> 
                <Caption>Sum: 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.2.2.E, 2.2.3.E, 2.2.3R.E, 2.2.4.E, 2.2.5.E, 2.2.6.E</Caption> 
                <Value>Sum: 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.2.2.E, 2.2.3.E, 2.2.3R.E, 2.2.4.E, 2.2.5.E, 2.2.6.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.2.2.F, 2.2.3.F, 2.2.3R.F, 2.2.4.F, 2.2.5.F, 2.2.6.F</Text> 
                <Caption>Sum: 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.2.2.F, 2.2.3.F, 2.2.3R.F, 2.2.4.F, 2.2.5.F, 2.2.6.F</Caption> 
                <Value>Sum: 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.2.2.F, 2.2.3.F, 2.2.3R.F, 2.2.4.F, 2.2.5.F, 2.2.6.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.7.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.7.A, 2.2.7.B, 2.2.7.C, 2.2.7.D, 2.2.7.E, 2.2.7.F</Text> 
                <Caption>Sum: 2.2.7.A, 2.2.7.B, 2.2.7.C, 2.2.7.D, 2.2.7.E, 2.2.7.F</Caption> 
                <Value>Sum: 2.2.7.A, 2.2.7.B, 2.2.7.C, 2.2.7.D, 2.2.7.E, 2.2.7.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.1.A</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.1.A</Text> 
                <Caption>2.3.1.A</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.1.B</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.1.B</Text> 
                <Caption>2.3.1.B</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>SYS_XR total net quantity MINUS SYS_XD total net quantity</Text> 
                <Caption>SYS_XR total net quantity MINUS SYS_XD total net quantity</Caption> 
                <Value>SYS_XR total net quantity MINUS SYS_XD total net quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>SYS_XR total net quantity MINUS SYS_XD total net quantity</Text> 
                <Caption>SYS_XR total net quantity MINUS SYS_XD total net quantity</Caption> 
                <Value>SYS_XR total net quantity MINUS SYS_XD total net quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.A, 2.1.4.A, 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.3.4.A</Text> 
                <Caption>Sum: 2.1.3.A, 2.1.4.A, 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.3.4.A</Caption> 
                <Value>Sum: 2.1.3.A, 2.1.4.A, 2.2.1.A, 2.2.1a.A, 2.2.1b.A, 2.3.4.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.B, 2.1.4.B, 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.3.4.B</Text> 
                <Caption>Sum: 2.1.3.B, 2.1.4.B, 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.3.4.B</Caption> 
                <Value>Sum: 2.1.3.B, 2.1.4.B, 2.2.1.B, 2.2.1a.B, 2.2.1b.B, 2.3.4.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.C, 2.1.4.C, 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.3.4.C</Text> 
                <Caption>Sum: 2.1.3.C, 2.1.4.C, 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.3.4.C</Caption> 
                <Value>Sum: 2.1.3.C, 2.1.4.C, 2.2.1.C, 2.2.1a.C, 2.2.1b.C, 2.3.4.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.D, 2.1.4.D, 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.3.4.D</Text> 
                <Caption>Sum: 2.1.3.D, 2.1.4.D, 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.3.4.D</Caption> 
                <Value>Sum: 2.1.3.D, 2.1.4.D, 2.2.1.D, 2.2.1a.D, 2.2.1b.D, 2.3.4.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.E, 2.1.4.E, 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.3.4.E</Text> 
                <Caption>Sum: 2.1.3.E, 2.1.4.E, 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.3.4.E</Caption> 
                <Value>Sum: 2.1.3.E, 2.1.4.E, 2.2.1.E, 2.2.1a.E, 2.2.1b.E, 2.3.4.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.7.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.1.3.F, 2.1.4.F, 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.3.4.F</Text> 
                <Caption>Sum: 2.1.3.F, 2.1.4.F, 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.3.4.F</Caption> 
                <Value>Sum: 2.1.3.F, 2.1.4.F, 2.2.1.F, 2.2.1a.F, 2.2.1b.F, 2.3.4.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.8.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.1.2.C</Text> 
                <Caption>repeat value from 2.1.2.C</Caption> 
                <Value>repeat value from 2.1.2.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.8.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.1.2.D</Text> 
                <Caption>repeat value from 2.1.2.D</Caption> 
                <Value>repeat value from 2.1.2.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.8.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.1.2.E</Text> 
                <Caption>repeat value from 2.1.2.E</Caption> 
                <Value>repeat value from 2.1.2.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.8.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.1.2.F</Text> 
                <Caption>repeat value from 2.1.2.F</Caption> 
                <Value>repeat value from 2.1.2.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.A - 2.3.8.A</Text> 
                <Caption>2.3.7.A - 2.3.8.A</Caption> 
                <Value>2.3.7.A - 2.3.8.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.B - 2.3.8.B</Text> 
                <Caption>2.3.7.B - 2.3.8.B</Caption> 
                <Value>2.3.7.B - 2.3.8.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.C - 2.3.8.C</Text> 
                <Caption>2.3.7.C - 2.3.8.C</Caption> 
                <Value>2.3.7.C - 2.3.8.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.D - 2.3.8.D</Text> 
                <Caption>2.3.7.D - 2.3.8.D</Caption> 
                <Value>2.3.7.D - 2.3.8.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.E - 2.3.8.E</Text> 
                <Caption>2.3.7.E - 2.3.8.E</Caption> 
                <Value>2.3.7.E - 2.3.8.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.9.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.7.F - 2.3.8.F</Text> 
                <Caption>2.3.7.F - 2.3.8.F</Caption> 
                <Value>2.3.7.F - 2.3.8.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.10.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.A</Text> 
                <Caption>repeat value from 2.2.3.A</Caption> 
                <Value>repeat value from 2.2.3.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.B</Text> 
                <Caption>repeat value from 2.2.3.B</Caption> 
                <Value>repeat value from 2.2.3.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.C</Text> 
                <Caption>repeat value from 2.2.3.C</Caption> 
                <Value>repeat value from 2.2.3.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.D</Text> 
                <Caption>repeat value from 2.2.3.D</Caption> 
                <Value>repeat value from 2.2.3.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.E</Text> 
                <Caption>repeat value from 2.2.3.E</Caption> 
                <Value>repeat value from 2.2.3.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>repeat value from 2.2.3.F</Text> 
                <Caption>repeat value from 2.2.3.F</Caption> 
                <Value>repeat value from 2.2.3.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Text> 
                <Caption>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Caption> 
                <Value>Total Net Quantity of rows with dest state = TN MINUS Total Net Quantity of rows with dest state <> TN</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11a.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.3.11a.A, 2.3.11a.B, 2.3.11a.C, 2.3.11a.D, 2.3.11a.E, 2.3.11a.F</Text> 
                <Caption>Sum: 2.3.11a.A, 2.3.11a.B, 2.3.11a.C, 2.3.11a.D, 2.3.11a.E, 2.3.11a.F</Caption> 
                <Value>Sum: 2.3.11a.A, 2.3.11a.B, 2.3.11a.C, 2.3.11a.D, 2.3.11a.E, 2.3.11a.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.11b.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.12.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.12.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.13.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.4.A, 2.2.5.A</Text> 
                <Caption>Sum: 2.2.4.A, 2.2.5.A</Caption> 
                <Value>Sum: 2.2.4.A, 2.2.5.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.13.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.2.4.B, 2.2.5.B</Text> 
                <Caption>Sum: 2.2.4.B, 2.2.5.B</Caption> 
                <Value>Sum: 2.2.4.B, 2.2.5.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.14.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Total Net Quantity</Text> 
                <Caption>Total Net Quantity</Caption> 
                <Value>Total Net Quantity</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.A</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.A + 2.3.11a.A + 2.3.11b.A - 2.3.10.A - 2.3.11.A - 2.3.12.A - 2.3.13.A - 2.3.14.A</Text> 
                <Caption>2.3.9.A + 2.3.11a.A + 2.3.11b.A - 2.3.10.A - 2.3.11.A - 2.3.12.A - 2.3.13.A - 2.3.14.A</Caption> 
                <Value>2.3.9.A + 2.3.11a.A + 2.3.11b.A - 2.3.10.A - 2.3.11.A - 2.3.12.A - 2.3.13.A - 2.3.14.A</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>10</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.B</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.B + 2.3.11a.B + 2.3.11b.B - 2.3.10.B - 2.3.11.B - 2.3.12.B - 2.3.13.B - 2.3.14.B</Text> 
                <Caption>2.3.9.B + 2.3.11a.B + 2.3.11b.B - 2.3.10.B - 2.3.11.B - 2.3.12.B - 2.3.13.B - 2.3.14.B</Caption> 
                <Value>2.3.9.B + 2.3.11a.B + 2.3.11b.B - 2.3.10.B - 2.3.11.B - 2.3.12.B - 2.3.13.B - 2.3.14.B</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>95</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.C</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.C + 2.3.11a.C + 2.3.11b.C - 2.3.10.C - 2.3.11.C - 2.3.12.C - 2.3.13.C - 2.3.14.C</Text> 
                <Caption>2.3.9.C + 2.3.11a.C + 2.3.11b.C - 2.3.10.C - 2.3.11.C - 2.3.12.C - 2.3.13.C - 2.3.14.C</Caption> 
                <Value>2.3.9.C + 2.3.11a.C + 2.3.11b.C - 2.3.10.C - 2.3.11.C - 2.3.12.C - 2.3.13.C - 2.3.14.C</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>180</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.D</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.D + 2.3.11a.D + 2.3.11b.D - 2.3.10.D - 2.3.11.D - 2.3.12.D - 2.3.13.D - 2.3.14.D</Text> 
                <Caption>2.3.9.D + 2.3.11a.D + 2.3.11b.D - 2.3.10.D - 2.3.11.D - 2.3.12.D - 2.3.13.D - 2.3.14.D</Caption> 
                <Value>2.3.9.D + 2.3.11a.D + 2.3.11b.D - 2.3.10.D - 2.3.11.D - 2.3.12.D - 2.3.13.D - 2.3.14.D</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>265</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.E</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.E + 2.3.11a.E + 2.3.11b.E - 2.3.10.E - 2.3.11.E - 2.3.12.E - 2.3.13.E - 2.3.14.E</Text> 
                <Caption>2.3.9.E + 2.3.11a.E + 2.3.11b.E - 2.3.10.E - 2.3.11.E - 2.3.12.E - 2.3.13.E - 2.3.14.E</Caption> 
                <Value>2.3.9.E + 2.3.11a.E + 2.3.11b.E - 2.3.10.E - 2.3.11.E - 2.3.12.E - 2.3.13.E - 2.3.14.E</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>350</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.F</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.3.9.F + 2.3.11a.F + 2.3.11b.F - 2.3.10.F - 2.3.11.F - 2.3.12.F - 2.3.13.F - 2.3.14.F</Text> 
                <Caption>2.3.9.F + 2.3.11a.F + 2.3.11b.F - 2.3.10.F - 2.3.11.F - 2.3.12.F - 2.3.13.F - 2.3.14.F</Caption> 
                <Value>2.3.9.F + 2.3.11a.F + 2.3.11b.F - 2.3.10.F - 2.3.11.F - 2.3.12.F - 2.3.13.F - 2.3.14.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>435</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.15.G</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Sum: 2.3.15.A, 2.3.15.B, 2.3.15.C, 2.3.15.D, 2.3.15.E, 2.3.15.F</Text> 
                <Caption>Sum: 2.3.15.A, 2.3.15.B, 2.3.15.C, 2.3.15.D, 2.3.15.E, 2.3.15.F</Caption> 
                <Value>Sum: 2.3.15.A, 2.3.15.B, 2.3.15.C, 2.3.15.D, 2.3.15.E, 2.3.15.F</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>520</Left> 
                <Width>75</Width> 
                <Height>20</Height> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
</Forms> 
