<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>E120.04</Group> 
    <Version>1.0</Version> 
    <Datasource>server=192.168.30.111;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Comments></Comments> 
    <Datasets>
        <Dataset>
            <Name>Test</Name> 
            <SQL>SELECT distinct Purchaser_Name, Purchaser_Gov_ID FROM vw_WSTF</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>E120.04</Name> 
        <Title>E120.04</Title> 
        <Visible>True</Visible> 
        <Image>C:\Development\IGenFuels\IGenForms\IGenForms\bin\Debug\FormFiles\IGen\AZ\AZ_E120.04_Supplier_UST_Cover_200901.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>TEST</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>1.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(PURCHASER_NAME):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>17</Top> 
                <Left>11</Left> 
                <Width>493</Width> 
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
                <Comments>Add the purchasers name</Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Text> 
                <Caption>{COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Caption> 
                <Value>={COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.GOV_ID}</Text> 
                <Caption>{COMPANIES.GOV_ID}</Caption> 
                <Value>={COMPANIES.GOV_ID}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.4.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.5.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.H.5.1</Text> 
                <Caption>1.H.5.1</Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.5.2</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.H.5.2</Text> 
                <Caption>1.H.5.2</Caption> 
                <Value>=AMENDMENT #</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>605</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.H.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{"X"}</Text> 
                <Caption>{"X"}</Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>690</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.11.4}</Text> 
                <Caption>{2.1.11.4}</Caption> 
                <Value>= {2.1.11.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.3.16.4}</Text> 
                <Caption>{2.3.16.4}</Caption> 
                <Value>= {2.3.16.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{1.1.1.1} + {1.1.2.1}</Text> 
                <Caption>{1.1.1.1} + {1.1.2.1}</Caption> 
                <Value>= {1.1.1.1} + {1.1.2.1}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.4.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.1.4.1</Text> 
                <Caption>1.1.4.1</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.2.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.27.4}</Text> 
                <Caption>{2.4.27.4}</Caption> 
                <Value>= {2.4.27.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.3.1.2</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1.3.1.2</Text> 
                <Caption>1.3.1.2</Caption> 
                <Value>={DATE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.3.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.NAME}</Text> 
                <Caption>{COMPANY_CONTACTS.NAME}</Caption> 
                <Value>={COMPANY_CONTACTS.NAME}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.3.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.PHONE}</Text> 
                <Caption>{COMPANY_CONTACTS.PHONE}</Caption> 
                <Value>={COMPANY_CONTACTS.PHONE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>1455</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.3.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.TITLE}</Text> 
                <Caption>{COMPANY_CONTACTS.TITLE}</Caption> 
                <Value>={COMPANY_CONTACTS.TITLE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.3.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.EMAIL}</Text> 
                <Caption>{COMPANY_CONTACTS.EMAIL}</Caption> 
                <Value>={COMPANY_CONTACTS.EMAIL}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>1625</Left> 
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
        <Name>E120.04_2</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>2.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.H.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>1795</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.H.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.GOV_ID}</Text> 
                <Caption>{COMPANIES.GOV_ID}</Caption> 
                <Value>={COMPANIES.GOV_ID}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>1880</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.H.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>1965</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.H.1.6</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.H.1.6</Text> 
                <Caption>2.H.1.6</Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>2135</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.1}</Text> 
                <Caption>{2.5.33.1}</Caption> 
                <Value>= {2.5.33.1}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>2220</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.2}</Text> 
                <Caption>{2.5.33.2}</Caption> 
                <Value>= {2.5.33.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>2305</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.4}</Text> 
                <Caption>{2.5.33.4}</Caption> 
                <Value>= {2.5.33.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>2475</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>2730</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.1.1}</Text> 
                <Caption>{2.1.1.1}</Caption> 
                <Value>= {2.1.1.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.1.2}</Text> 
                <Caption>{2.1.1.2}</Caption> 
                <Value>= {2.1.1.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>2985</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.2.3}</Text> 
                <Caption>{2.1.2.3}</Caption> 
                <Value>= {2.1.2.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>3070</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.1.4}</Text> 
                <Caption>{2.1.1.4}</Caption> 
                <Value>= {2.1.1.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>3155</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-AF]</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-MVF]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>3325</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-DD]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>3410</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-UF]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>3495</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.3.1} * {ERR}</Text> 
                <Caption>{2.1.3.1} * {ERR}</Caption> 
                <Value>= {2.1.3.1} * {[AZ-ST-AF]}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.3.2} * {ERR}</Text> 
                <Caption>{2.1.3.2} * {ERR}</Caption> 
                <Value>= {2.1.3.2} * {[AZ-ST-MVF]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>3665</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.3.3} * {ERR}</Text> 
                <Caption>{2.1.3.3} * {ERR}</Caption> 
                <Value>= {2.1.3.3} * {[AZ-ST-DD]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>3750</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.3.4} * {ERR}</Text> 
                <Caption>{2.1.3.4} * {ERR}</Caption> 
                <Value>= {2.1.3.4} * {[AZ-ST-UF]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>3835</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.5.1} + {2.1.5.2} + {2.1.5.3} + {2.1.5.4}</Text> 
                <Caption>{2.1.5.1} + {2.1.5.2} + {2.1.5.3} + {2.1.5.4}</Caption> 
                <Value>= {2.1.5.1} + {2.1.5.2} + {2.1.5.3} + {2.1.5.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>4175</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.6.4} * {ERR}</Text> 
                <Caption>{2.1.6.4} * {ERR}</Caption> 
                <Value>= {2.1.6.4} * {[AZ-ST-CA]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>4515</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.8.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-LF]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>4855</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.9.4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.9.4</Text> 
                <Caption>2.1.9.4</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>5195</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.10.4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.1.10.4</Text> 
                <Caption>2.1.10.4</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>5535</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.11.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.6.4} + {2.1.7.4} + {2.1.8.4} + {2.1.9.4} + {2.1.10.4}</Text> 
                <Caption>{2.1.6.4} + {2.1.7.4} + {2.1.8.4} + {2.1.9.4} + {2.1.10.4}</Caption> 
                <Value>= {2.1.6.4} + {2.1.7.4} + {2.1.8.4} + {2.1.9.4} + {2.1.10.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>5875</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.12.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>6045</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.2.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>6130</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.16.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>7490</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.3.16.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.3.16.3} * {ERR}</Text> 
                <Caption>{2.3.16.3} * {ERR}</Caption> 
                <Value>= {2.3.16.3} * {[AZ-ST-DD]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>7575</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.1}</Text> 
                <Caption>{2.5.33.1}</Caption> 
                <Value>= {2.5.33.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.17.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.2}</Text> 
                <Caption>{2.5.33.2}</Caption> 
                <Value>= {2.5.33.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>7745</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.17.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.3}</Text> 
                <Caption>{2.5.33.3}</Caption> 
                <Value>= {2.5.33.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>7830</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.17.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.33.4}</Text> 
                <Caption>{2.5.33.4}</Caption> 
                <Value>= {2.5.33.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>7915</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.18.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>8085</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.18.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>8170</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.18.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>8255</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.19.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>8425</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>8510</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.19.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>8595</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.20.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.18.1} + {2.4.19.1}</Text> 
                <Caption>{2.4.18.1} + {2.4.19.1}</Caption> 
                <Value>= {2.4.18.1} + {2.4.19.1}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.20.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.18.2} + {2.4.19.2}</Text> 
                <Caption>{2.4.18.2} + {2.4.19.2}</Caption> 
                <Value>= {2.4.18.2} + {2.4.19.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>8765</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.20.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.18.3} + {2.4.19.3}</Text> 
                <Caption>{2.4.18.3} + {2.4.19.3}</Caption> 
                <Value>= {2.4.18.3} + {2.4.19.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>8850</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.20.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.18.4} + {2.4.19.4}</Text> 
                <Caption>{2.4.18.4} + {2.4.19.4}</Caption> 
                <Value>= {2.4.18.4} + {2.4.19.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>8935</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.21.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-UST]</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.21.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-UST]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>9105</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.21.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-UST]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>9190</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.21.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-UST]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>9275</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.22.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>MULTIPLE: 2.4.20.1 * {ERR}</Text> 
                <Caption>MULTIPLE: 2.4.20.1 * {ERR}</Caption> 
                <Value>=MULTIPLE: 2.4.20.1 * {[AZ-UST]}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.22.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>MULTIPLE: 2.4.20.2 * {ERR}</Text> 
                <Caption>MULTIPLE: 2.4.20.2 * {ERR}</Caption> 
                <Value>=MULTIPLE: 2.4.20.2 * {[AZ-UST]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>9445</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.22.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>MULTIPLE: 2.4.20.3 * {ERR}</Text> 
                <Caption>MULTIPLE: 2.4.20.3 * {ERR}</Caption> 
                <Value>=MULTIPLE: 2.4.20.3 * {[AZ-UST]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>9530</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.22.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>MULTIPLE: 2.4.20.4 * {ERR}</Text> 
                <Caption>MULTIPLE: 2.4.20.4 * {ERR}</Caption> 
                <Value>=MULTIPLE: 2.4.20.4 * {[AZ-UST]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>9615</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.23.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.22.1} + {2.4.22.2} + {2.4.22.3} + {2.4.22.4}</Text> 
                <Caption>{2.4.22.1} + {2.4.22.2} + {2.4.22.3} + {2.4.22.4}</Caption> 
                <Value>= {2.4.22.1} + {2.4.22.2} + {2.4.22.3} + {2.4.22.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>9955</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.24.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-LF]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>10295</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.25.4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.4.25.4</Text> 
                <Caption>2.4.25.4</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>10635</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.26.4</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2.4.26.4</Text> 
                <Caption>2.4.26.4</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>10975</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.4.27.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.23.4} + {2.4.24.4} + {2.4.25.4} + {2.4.26.4}</Text> 
                <Caption>{2.4.23.4} + {2.4.24.4} + {2.4.25.4} + {2.4.26.4}</Caption> 
                <Value>= {2.4.23.4} + {2.4.24.4} + {2.4.25.4} + {2.4.26.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>11315</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.28.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>11485</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.28.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>11570</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.28.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>11655</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.29.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.29.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>11825</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.29.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>11910</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.29.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>11995</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.30.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.30.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>12165</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.30.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>12335</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.31.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.31.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
                <Left>12505</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.31.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
                <Left>12675</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.32.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.32.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
                <Left>12845</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.32.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
                <Left>13015</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.33.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.29.1} + {2.5.30.1} + {2.5.31.1} + {2.5.32.1}</Text> 
                <Caption>{2.5.29.1} + {2.5.30.1} + {2.5.31.1} + {2.5.32.1}</Caption> 
                <Value>= {2.5.29.1} + {2.5.30.1} + {2.5.31.1} + {2.5.32.1}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.33.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.28.2} + {2.5.29.2} + {2.5.30.2} + {2.5.31.2} + {2.5.32.2}</Text> 
                <Caption>{2.5.28.2} + {2.5.29.2} + {2.5.30.2} + {2.5.31.2} + {2.5.32.2}</Caption> 
                <Value>= {2.5.28.2} + {2.5.29.2} + {2.5.30.2} + {2.5.31.2} + {2.5.32.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
                <Left>13185</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.33.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.28.3} + {2.5.29.3}</Text> 
                <Caption>{2.5.28.3} + {2.5.29.3}</Caption> 
                <Value>= {2.5.28.3} + {2.5.29.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
                <Left>13270</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.5.33.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.5.28.4} + {2.5.29.4} + {2.5.30.4} + {2.5.31.4} + {2.5.32.4}</Text> 
                <Caption>{2.5.28.4} + {2.5.29.4} + {2.5.30.4} + {2.5.31.4} + {2.5.32.4}</Caption> 
                <Value>= {2.5.28.4} + {2.5.29.4} + {2.5.30.4} + {2.5.31.4} + {2.5.32.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
                <Left>13355</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.34.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>776</Top> 
                <Left>13525</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.34.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>776</Top> 
                <Left>13695</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.35.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.35.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
                <Left>13865</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.35.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
                <Left>13950</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.35.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
                <Left>14035</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.36.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.36.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
                <Left>14205</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.36.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
                <Left>14375</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.37.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.37.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
                <Left>14545</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.37.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
                <Left>14715</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.38.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.38.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
                <Left>14885</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.38.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
                <Left>15055</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.39.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.39.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
                <Left>15225</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.39.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
                <Left>15310</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.39.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
                <Left>15395</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.40.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>908</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.40.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>908</Top> 
                <Left>15565</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.40.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>908</Top> 
                <Left>15650</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.40.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>908</Top> 
                <Left>15735</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.6.41.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>930</Top> 
                <Left>15990</Left> 
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
        <Name>E120.04_3</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>3.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.H.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16245</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.H.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.GOV_ID}</Text> 
                <Caption>{COMPANIES.GOV_ID}</Caption> 
                <Value>={COMPANIES.GOV_ID}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16330</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.H.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16415</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16500</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16585</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>16670</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>16840</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>16925</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>17095</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>17180</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>17350</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>17435</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>17605</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>17690</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>17860</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>17945</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>18115</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>18200</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>18370</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>18455</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>18625</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>18710</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>18880</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>18965</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.11.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>19135</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.11.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>19220</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.12.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>19390</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>19475</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.13.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>19645</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.13.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>19730</Left> 
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
        <Name>E120.04_4</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>4.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.H.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>19900</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.H.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.GOV_ID}</Text> 
                <Caption>{COMPANIES.GOV_ID}</Caption> 
                <Value>={COMPANIES.GOV_ID}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>19985</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.H.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>20070</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>20240</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>20325</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>20495</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>20580</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>20750</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>20835</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>21005</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>21090</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>21260</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>21345</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>21515</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>21600</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.8.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>21770</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.8.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>21855</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.9.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>22025</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.9.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>22110</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.10.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>22280</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.10.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>22365</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.11.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>22535</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.11.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>22620</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.12.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>22790</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>22875</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.13.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>23045</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.13.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>23130</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.14.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.14.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>23300</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.14.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>23385</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.15.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.15.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>23555</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.15.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>23640</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.16.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.16.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>23810</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.16.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>23895</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.17.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>24065</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.17.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>24150</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.18.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>24320</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.18.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>24405</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.19.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>24575</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>24660</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.20.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.20.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>24830</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.20.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>24915</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.21.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.21.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>25085</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.21.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>25170</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.22.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.22.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>25340</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.22.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>25425</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.23.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.23.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>25595</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.23.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>25680</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.24.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.24.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>25850</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.24.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>25935</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.25.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.25.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>26105</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.25.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>26190</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.26.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.26.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>26360</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.26.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>26445</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.27.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.27.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>26615</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.27.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>26700</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.28.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.28.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>26870</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.28.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>26955</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.29.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.29.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>27125</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.29.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>27210</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.30.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.30.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>27380</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.30.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>27465</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.31.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.31.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
                <Left>27635</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.31.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
                <Left>27720</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.32.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.32.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
                <Left>27890</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.32.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
                <Left>27975</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.33.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.33.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
                <Left>28145</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.33.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>754</Top> 
                <Left>28230</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.34.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>776</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.34.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>776</Top> 
                <Left>28400</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.34.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>776</Top> 
                <Left>28485</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.35.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.35.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
                <Left>28655</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.35.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>798</Top> 
                <Left>28740</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.36.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.36.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
                <Left>28910</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.36.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>820</Top> 
                <Left>28995</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.37.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.37.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
                <Left>29165</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.37.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>842</Top> 
                <Left>29250</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.38.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.38.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
                <Left>29420</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.38.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>864</Top> 
                <Left>29505</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.39.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.39.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL GROSS QUANTITY</Text> 
                <Caption>TOTAL GROSS QUANTITY</Caption> 
                <Value>=TOTAL GROSS QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
                <Left>29675</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.39.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL NET QUANTITY</Text> 
                <Caption>TOTAL NET QUANTITY</Caption> 
                <Value>=TOTAL NET QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>886</Top> 
                <Left>29760</Left> 
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
        <Name>E120.04_5</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>5.H1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME} + {COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME} + {COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME} + {COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2} + {COMPANIES_ADDRESSES.CITY} + {COMPANIES_ADDRESSES.JURISDICTION} + {COMPANIES_ADDRESSES.POSTAL_CODE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H2.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H3.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{"X"}</Text> 
                <Caption>{"X"}</Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>30100</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H3.2.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5.H3.2.1</Text> 
                <Caption>5.H3.2.1</Caption> 
                <Value>={"X"}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H3.3.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5.H3.3.1</Text> 
                <Caption>5.H3.3.1</Caption> 
                <Value>={"X"}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.H3.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>AMENDMENT NUMBER</Text> 
                <Caption>AMENDMENT NUMBER</Caption> 
                <Value>=AMENDMENT NUMBER</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>30440</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>30525</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>30610</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>30780</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>30865</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>31035</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>31120</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>31545</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>31630</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.6.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>31800</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>31885</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.7.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>32055</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.7.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>32140</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.8.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>32310</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.8.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>32395</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.9.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>32565</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.9.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>32650</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.10.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>32820</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.11.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>33075</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.11.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>33160</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>33415</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.2.1} + {5.1.6.1} + {5.1.9.1}</Text> 
                <Caption>{5.1.2.1} + {5.1.6.1} + {5.1.9.1}</Caption> 
                <Value>= {5.1.2.1} + {5.1.6.1} + {5.1.9.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.13.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.2.2} + {5.1.6.2} + {5.1.9.2}</Text> 
                <Caption>{5.1.2.2} + {5.1.6.2} + {5.1.9.2}</Caption> 
                <Value>= {5.1.2.2} + {5.1.6.2} + {5.1.9.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>33585</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.13.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.2.3} + {5.1.6.3} + {5.1.9.3}</Text> 
                <Caption>{5.1.2.3} + {5.1.6.3} + {5.1.9.3}</Caption> 
                <Value>= {5.1.2.3} + {5.1.6.3} + {5.1.9.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>33670</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.14.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.13.1} * {ERR}</Text> 
                <Caption>{5.1.13.1} * {ERR}</Caption> 
                <Value>= {5.1.13.1} * {[AZ-ST-AF]}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.14.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.13.2} * {ERR}</Text> 
                <Caption>{5.1.13.2} * {ERR}</Caption> 
                <Value>= {5.1.13.2} * {[AZ-ST-MVF]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>33840</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.14.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.13.3} * {ERR}</Text> 
                <Caption>{5.1.13.3} * {ERR}</Caption> 
                <Value>= {5.1.13.3} * {[AZ-ST-UF]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>33925</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.15.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.14.1} + {5.1.14.2} + {5.1.15.3}</Text> 
                <Caption>{5.1.14.1} + {5.1.14.2} + {5.1.15.3}</Caption> 
                <Value>= {5.1.14.1} + {5.1.14.2} + {5.1.15.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>34180</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.17.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>({5.1.13.1} + {5.1.13.2} + {5.1.13.3}) * {ERR}</Text> 
                <Caption>({5.1.13.1} + {5.1.13.2} + {5.1.13.3}) * {ERR}</Caption> 
                <Value>= ({5.1.13.1} + {5.1.13.2} + {5.1.13.3}) * {[AZ-ST-CA]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>512</Top> 
                <Left>34690</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.18.3</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5.1.18.3</Text> 
                <Caption>5.1.18.3</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>534</Top> 
                <Left>34945</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>DIFFERENCE 5.1.15.3 + {5.1.17.3} - {5.1.18.3}</Text> 
                <Caption>DIFFERENCE 5.1.15.3 + {5.1.17.3} - {5.1.18.3}</Caption> 
                <Value>=DIFFERENCE 5.1.15.3 + {5.1.17.3} - {5.1.18.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>556</Top> 
                <Left>35200</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.20.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>[AZ-ST-LF]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>578</Top> 
                <Left>35455</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.21.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.9.4}</Text> 
                <Caption>{2.1.9.4}</Caption> 
                <Value>={2.1.9.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>600</Top> 
                <Left>35710</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.22.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.1.10.4}</Text> 
                <Caption>{2.1.10.4}</Caption> 
                <Value>={2.1.10.4}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>622</Top> 
                <Left>35965</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.23.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED GALLONS * {ERR}</Text> 
                <Caption>TOTAL INVOICED GALLONS * {ERR}</Caption> 
                <Value>= TOTAL INVOICED GALLONS * {[AZ-ST-DD]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>644</Top> 
                <Left>36220</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.1.24.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{5.1.19.3} + {5.1.20.3} + {5.1.21.3} + {5.1.22.3} - {5.1.24.3}</Text> 
                <Caption>{5.1.19.3} + {5.1.20.3} + {5.1.21.3} + {5.1.22.3} - {5.1.24.3}</Caption> 
                <Value>= {5.1.19.3} + {5.1.20.3} + {5.1.21.3} + {5.1.22.3} - {5.1.24.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>666</Top> 
                <Left>36475</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.NAME}</Text> 
                <Caption>{COMPANY_CONTACTS.NAME}</Caption> 
                <Value>={COMPANY_CONTACTS.NAME}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{DATE}</Text> 
                <Caption>{DATE}</Caption> 
                <Value>={DATE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>36645</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.TITLE}</Text> 
                <Caption>{COMPANY_CONTACTS.TITLE}</Caption> 
                <Value>={COMPANY_CONTACTS.TITLE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>688</Top> 
                <Left>36730</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.PHONE}</Text> 
                <Caption>{COMPANY_CONTACTS.PHONE}</Caption> 
                <Value>={COMPANY_CONTACTS.PHONE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F1.4.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.PHONE_EXT}</Text> 
                <Caption>{COMPANY_CONTACTS.PHONE_EXT}</Caption> 
                <Value>={COMPANY_CONTACTS.PHONE_EXT}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>710</Top> 
                <Left>36900</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F2.1.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5.F2.1.1</Text> 
                <Caption>5.F2.1.1</Caption> 
                <Value>={"X"}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>5.F2.1.2</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5.F2.1.2</Text> 
                <Caption>5.F2.1.2</Caption> 
                <Value>={DATE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>732</Top> 
                <Left>37070</Left> 
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
        <Name>E120.04_6</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>6.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_CONTACTS.NAME}</Text> 
                <Caption>{COMPANY_CONTACTS.NAME}</Caption> 
                <Value>={COMPANY_CONTACTS.NAME}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>37325</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2}</Text> 
                <Caption>{COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2}</Caption> 
                <Value>={COMPANIES_ADDRESSES.ADDRESS_LINE_1} + {COMPANIES_ADDRESSES.ADDRESS_LINE_2}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES_ADDRESSES.CITY}</Text> 
                <Caption>{COMPANIES_ADDRESSES.CITY}</Caption> 
                <Value>={COMPANIES_ADDRESSES.CITY}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>37495</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES_ADDRESSES.JURISDICTION}</Text> 
                <Caption>{COMPANIES_ADDRESSES.JURISDICTION}</Caption> 
                <Value>={COMPANIES_ADDRESSES.JURISDICTION}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>37580</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.H.3.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES_ADDRESSES.POSTAL_CODE}</Text> 
                <Caption>{COMPANIES_ADDRESSES.POSTAL_CODE}</Caption> 
                <Value>={COMPANIES_ADDRESSES.POSTAL_CODE}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>37665</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.17.1} + {2.4.17.2} + {2.4.17.3} + {2.4.17.4}</Text> 
                <Caption>{2.4.17.1} + {2.4.17.2} + {2.4.17.3} + {2.4.17.4}</Caption> 
                <Value>= {2.4.17.1} + {2.4.17.2} + {2.4.17.3} + {2.4.17.4}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{6.1.2.1}</Text> 
                <Caption>{6.1.2.1}</Caption> 
                <Value>= {6.1.2.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{6.1.4.1} + {6.1.5.1}</Text> 
                <Caption>{6.1.4.1} + {6.1.5.1}</Caption> 
                <Value>= {6.1.4.1} + {6.1.5.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL INVOICED QUANTITY</Text> 
                <Caption>TOTAL INVOICED QUANTITY</Caption> 
                <Value>=TOTAL INVOICED QUANTITY</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{6.1.7.1} + {6.1.8.1} + {6.1.9.1} + {6.1.10.1}</Text> 
                <Caption>{6.1.7.1} + {6.1.8.1} + {6.1.9.1} + {6.1.10.1}</Caption> 
                <Value>= {6.1.7.1} + {6.1.8.1} + {6.1.9.1} + {6.1.10.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.16.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>DIFFERENCE: 6.1.4.1 - ({6.1.8.1} + {6.1.10.1})</Text> 
                <Caption>DIFFERENCE: 6.1.4.1 - ({6.1.8.1} + {6.1.10.1})</Caption> 
                <Value>=DIFFERENCE: 6.1.4.1 - ({6.1.8.1} + {6.1.10.1})</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{6.1.16.1} * {ERR}</Text> 
                <Caption>{6.1.16.1} * {ERR}</Caption> 
                <Value>={6.1.16.1} * {[AZ-UST]}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.18.1</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>6.1.18.1</Text> 
                <Caption>6.1.18.1</Caption> 
                <Value>=TOTAL DOLLAR AMOUNT</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>DIFFERENCE: 6.1.17.1 - {6.1.18.1}</Text> 
                <Caption>DIFFERENCE: 6.1.17.1 - {6.1.18.1}</Caption> 
                <Value>=DIFFERENCE: 6.1.17.1 - {6.1.18.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.20.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.25.4}</Text> 
                <Caption>{2.4.25.4}</Caption> 
                <Value>= {2.4.25.4}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.21.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.26.4}</Text> 
                <Caption>{2.4.26.4}</Caption> 
                <Value>= {2.4.26.4}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.22.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{2.4.25.4}</Text> 
                <Caption>{2.4.25.4}</Caption> 
                <Value>= {2.4.25.4}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>6.1.23.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{6.1.19.1} + {6.1.20.1} + {6.1.21.1} + {6.1.22.1}</Text> 
                <Caption>{6.1.19.1} + {6.1.20.1} + {6.1.21.1} + {6.1.22.1}</Caption> 
                <Value>= {6.1.19.1} + {6.1.20.1} + {6.1.21.1} + {6.1.22.1}</Value> 
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
        <Name>E120.04_7</Name> 
        <Title></Title> 
        <Visible>True</Visible> 
        <Image></Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>99</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>7.H.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.LEGAL_NAME}</Text> 
                <Caption>{COMPANIES.LEGAL_NAME}</Caption> 
                <Value>={COMPANIES.LEGAL_NAME}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.H.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANY_LICENSES.LIC_NUM}</Text> 
                <Caption>{COMPANY_LICENSES.LIC_NUM}</Caption> 
                <Value>={COMPANY_LICENSES.LIC_NUM}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>39790</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.H.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{COMPANIES.GOV_ID}</Text> 
                <Caption>{COMPANIES.GOV_ID}</Caption> 
                <Value>={COMPANIES.GOV_ID}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>39875</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.H.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{FILINGS.PERIOD}</Text> 
                <Caption>{FILINGS.PERIOD}</Caption> 
                <Value>={FILINGS.PERIOD}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>39960</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.1.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>40045</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.1.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>40130</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.1.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.1} + {7.1.1.2}</Text> 
                <Caption>{7.1.1.1} + {7.1.1.2}</Caption> 
                <Value>= {7.1.1.1} + {7.1.1.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>50</Top> 
                <Left>40215</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.2.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>40385</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.2.1} + {7.1.2.2}</Text> 
                <Caption>{7.1.2.1} + {7.1.2.2}</Caption> 
                <Value>= {7.1.2.1} + {7.1.2.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>72</Top> 
                <Left>40470</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.3.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>40640</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.3.1} + {7.1.3.2}</Text> 
                <Caption>{7.1.3.1} + {7.1.3.2}</Caption> 
                <Value>= {7.1.3.1} + {7.1.3.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>94</Top> 
                <Left>40725</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.4.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>40895</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.4.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.4.1} + {7.1.4.2}</Text> 
                <Caption>{7.1.4.1} + {7.1.4.2}</Caption> 
                <Value>= {7.1.4.1} + {7.1.4.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>116</Top> 
                <Left>40980</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.5.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>41150</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.5.1} + {7.1.5.2}</Text> 
                <Caption>{7.1.5.1} + {7.1.5.2}</Caption> 
                <Value>= {7.1.5.1} + {7.1.5.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>138</Top> 
                <Left>41235</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.6.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>41405</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.6.1} + {7.1.6.2}</Text> 
                <Caption>{7.1.6.1} + {7.1.6.2}</Caption> 
                <Value>= {7.1.6.1} + {7.1.6.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>160</Top> 
                <Left>41490</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.7.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>41660</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.7.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.7.1} + {7.1.7.2}</Text> 
                <Caption>{7.1.7.1} + {7.1.7.2}</Caption> 
                <Value>= {7.1.7.1} + {7.1.7.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>182</Top> 
                <Left>41745</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.8.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>41915</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.8.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.8.1} + {7.1.8.2}</Text> 
                <Caption>{7.1.8.1} + {7.1.8.2}</Caption> 
                <Value>= {7.1.8.1} + {7.1.8.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>204</Top> 
                <Left>42000</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.9.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>42170</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.9.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.9.1} + {7.1.9.2}</Text> 
                <Caption>{7.1.9.1} + {7.1.9.2}</Caption> 
                <Value>= {7.1.9.1} + {7.1.9.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>226</Top> 
                <Left>42255</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.10.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>42425</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.10.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.10.1} + {7.1.10.2}</Text> 
                <Caption>{7.1.10.1} + {7.1.10.2}</Caption> 
                <Value>= {7.1.10.1} + {7.1.10.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>248</Top> 
                <Left>42510</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.11.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>42680</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.11.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.11.1} + {7.1.11.2}</Text> 
                <Caption>{7.1.11.1} + {7.1.11.2}</Caption> 
                <Value>= {7.1.11.1} + {7.1.11.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>270</Top> 
                <Left>42765</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.12.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>42935</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.12.1} + {7.1.12.2}</Text> 
                <Caption>{7.1.12.1} + {7.1.12.2}</Caption> 
                <Value>= {7.1.12.1} + {7.1.12.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>292</Top> 
                <Left>43020</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.13.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>43190</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.13.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.13.1} + {7.1.13.2}</Text> 
                <Caption>{7.1.13.1} + {7.1.13.2}</Caption> 
                <Value>= {7.1.13.1} + {7.1.13.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>314</Top> 
                <Left>43275</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.14.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.14.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>43445</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.14.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.14.1} + {7.1.14.2}</Text> 
                <Caption>{7.1.14.1} + {7.1.14.2}</Caption> 
                <Value>= {7.1.14.1} + {7.1.14.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>336</Top> 
                <Left>43530</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.15.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.15.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>43700</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.15.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.15.1} + {7.1.15.2}</Text> 
                <Caption>{7.1.15.1} + {7.1.15.2}</Caption> 
                <Value>= {7.1.15.1} + {7.1.15.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>358</Top> 
                <Left>43785</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.16.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1}</Text> 
                <Caption>{7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1}</Caption> 
                <Value>= {7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.16.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2}</Text> 
                <Caption>{7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2}</Caption> 
                <Value>= {7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>43955</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.16.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.3} + {7.1.2.3} + {7.1.3.3} + {7.1.4.3} + {7.1.5.3} + {7.1.6.3} + {7.1.7.3} + {7.1.8.3} + {7.1.9.3} + {7.1.10.3} + {7.1.11.3} + {7.1.12.3} + {7.1.13.3} + {7.1.14.3} + {7.1.15.3}</Text> 
                <Caption>{7.1.1.3} + {7.1.2.3} + {7.1.3.3} + {7.1.4.3} + {7.1.5.3} + {7.1.6.3} + {7.1.7.3} + {7.1.8.3} + {7.1.9.3} + {7.1.10.3} + {7.1.11.3} + {7.1.12.3} + {7.1.13.3} + {7.1.14.3} + {7.1.15.3}</Caption> 
                <Value>= {7.1.1.3} + {7.1.2.3} + {7.1.3.3} + {7.1.4.3} + {7.1.5.3} + {7.1.6.3} + {7.1.7.3} + {7.1.8.3} + {7.1.9.3} + {7.1.10.3} + {7.1.11.3} + {7.1.12.3} + {7.1.13.3} + {7.1.14.3} + {7.1.15.3}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>380</Top> 
                <Left>44040</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.17.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>44210</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.17.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.17.1} + {7.1.17.2}</Text> 
                <Caption>{7.1.17.1} + {7.1.17.2}</Caption> 
                <Value>= {7.1.17.1} + {7.1.17.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>402</Top> 
                <Left>44295</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.18.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>44465</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.18.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.18.1} + {7.1.18.2}</Text> 
                <Caption>{7.1.18.1} + {7.1.18.2}</Caption> 
                <Value>= {7.1.18.1} + {7.1.18.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>424</Top> 
                <Left>44550</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.19.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>44720</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.19.1} + {7.1.19.2}</Text> 
                <Caption>{7.1.19.1} + {7.1.19.2}</Caption> 
                <Value>= {7.1.19.1} + {7.1.19.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>446</Top> 
                <Left>44805</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.20.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.20.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TOTAL BILLED GALLONS</Text> 
                <Caption>TOTAL BILLED GALLONS</Caption> 
                <Value>=TOTAL BILLED GALLONS</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>44975</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.20.3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.20.1} + {7.1.20.2}</Text> 
                <Caption>{7.1.20.1} + {7.1.20.2}</Caption> 
                <Value>= {7.1.20.1} + {7.1.20.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>468</Top> 
                <Left>45060</Left> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.21.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1} + {7.1.17.1} + {7.1.18.1} + {7.1.19.1} + {7.1.20.1}</Text> 
                <Caption>{7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1} + {7.1.17.1} + {7.1.18.1} + {7.1.19.1} + {7.1.20.1}</Caption> 
                <Value>= {7.1.1.1} + {7.1.2.1} + {7.1.3.1.} + {7.1.4.1} + {7.1.5.1} + {7.1.6.1} + {7.1.7.1} + {7.1.8.1} + {7.1.9.1} + {7.1.10.1} + {7.1.11.1} + {7.1.12.1} + {7.1.13.1} + {7.1.14.1} + {7.1.15.1} + {7.1.17.1} + {7.1.18.1} + {7.1.19.1} + {7.1.20.1}</Value> 
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
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>7.1.21.2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>{7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2} + {7.1.17.2} + {7.1.18.2} + {7.1.19.2} + {7.1.20.2}</Text> 
                <Caption>{7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2} + {7.1.17.2} + {7.1.18.2} + {7.1.19.2} + {7.1.20.2}</Caption> 
                <Value>= {7.1.1.2} + {7.1.2.2} + {7.1.3.2.} + {7.1.4.2} + {7.1.5.2} + {7.1.6.2} + {7.1.7.2} + {7.1.8.2} + {7.1.9.2} + {7.1.10.2} + {7.1.11.2} + {7.1.12.2} + {7.1.13.2} + {7.1.14.2} + {7.1.15.2} + {7.1.17.2} + {7.1.18.2} + {7.1.19.2} + {7.1.20.2}</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image></Image> 
                <Top>490</Top> 
                <Left>45230</Left> 
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
