<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>Georgia_Tax</Group> 
    <Version>1.0</Version> 
    <Datasource>server=localhost;database=IGenFuels_Data_US_QA;uid=qa;pwd=qa;trusted_connection=false;</Datasource> 
    <DataSetName></DataSetName> 
    <Comments></Comments> 
    <Datasets>
        <Dataset>
            <Name>MFD-04_5</Name> 
            <SQL>select * from vw_WSTF where (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Product) in ('054', '065', '124', '125', '123', '130', '145', '226', '284', '227', '167', '224', '225') and (Schedule_Code) in ('1', '2', '3')</SQL> 
        </Dataset>
        <Dataset>
            <Name>MFD-04_6</Name> 
            <SQL>select * from vw_WSTF where (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Product) in ('054', '065', '124', '125', '123', '130', '145', '226', '284', '227', '167', '224', '225') and (Schedule_Code) in ('5', '5X', '6', '8', '10')</SQL> 
        </Dataset>
    </Datasets>
    <Form>
        <Name>MFD-04_91</Name> 
        <Title>Page 1</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04.png</Image> 
        <FormType>Return</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>100</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>MFD-04_5</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>1.1.2a.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>392</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments>Test comments</Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2a.C</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>392</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2a.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>16781</Text> 
                <Caption>16781</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>392</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2b.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>412</Top> 
                <Left>311</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2b.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>412</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2b.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>412</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2c.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>431</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2c.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>432</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2c.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>431</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2d.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>451</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2d.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>451</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2d.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>451</Top> 
                <Left>482</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2e.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>10721</Text> 
                <Caption>10721</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>469</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2e.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>-70916</Text> 
                <Caption>-70916</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>469</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2e.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>31492</Text> 
                <Caption>31492</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>469</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2f.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('065', '124', '125') AND (Origin_State) NOT IN ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>489</Top> 
                <Left>313</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2f.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('072', '226', '227') AND (Origin_State) NOT IN ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>489</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2f.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>-7811</Text> 
                <Caption>-7811</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('130', '142', '167', '145', '284') AND (Origin_State) NOT IN ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>489</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>10401</Text> 
                <Caption>10401</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '2' AND (Product) IN ('065', '124', '125'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>508</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>11192</Text> 
                <Caption>11192</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '2' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>508</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>20926</Text> 
                <Caption>20926</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '2' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>508</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>102118</Text> 
                <Caption>102118</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '1' AND (Product) IN ('065', '124', '125'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>527</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>77377</Text> 
                <Caption>77377</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '1' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>526</Top> 
                <Left>657</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>82593</Text> 
                <Caption>82593</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '1' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>527</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>123240</Text> 
                <Caption>123240</Caption> 
                <Value>=[1.1.1.A] + [1.1.2a.A] + [1.1.2b.A] + [1.1.2c.A] + [1.1.2d.A] + [1.1.2e.A] + [1.1.2f.A] + [1.1.3.A] + [1.1.4.A] + [1.1.5.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>568</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>17653</Text> 
                <Caption>17653</Caption> 
                <Value>=[1.1.1.C] + [1.1.2a.C] + [1.1.2b.C] + [1.1.2c.C] + [1.1.2d.C] + [1.1.2e.C] + [1.1.2f.C] + [1.1.3.C] + [1.1.4.C] + [1.1.5.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>568</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>143981</Text> 
                <Caption>143981</Caption> 
                <Value>=[1.1.1.B] + [1.1.2a.B] + [1.1.2b.B] + [1.1.2c.B] + [1.1.2d.B] + [1.1.2e.B] + [1.1.2f.B] + [1.1.3.B] + [1.1.4.B] + [1.1.5.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>568</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>148071</Text> 
                <Caption>148071</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '8' AND (Product) IN ('065', '124', '125'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>741</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.8.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>199454</Text> 
                <Caption>199454</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '8' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>741</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>182072</Text> 
                <Caption>182072</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '8' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>741</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>222727</Text> 
                <Caption>222727</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '6' AND (Product) IN ('065', '124', '125'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>760</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.9.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>210707</Text> 
                <Caption>210707</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '6' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>760</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>374446</Text> 
                <Caption>374446</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '6' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>760</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.10.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>10992</Text> 
                <Caption>10992</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '10' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>778</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>18489</Text> 
                <Caption>18489</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '10' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>779</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.13A.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('125') and (Purchaser_Lic_Type) = 'DistAvGas')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>856</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.13B.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>21203</Text> 
                <Caption>21203</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Product) = '125' AND ((Schedule_Code) = '5' OR ((Schedule_Code) = '5X' AND (Purchaser_Lic_Type) != 'DistAvGas')))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>874</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.14.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>15381</Text> 
                <Caption>15381</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5' AND (Product) IN ('065', '124'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>893</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.14.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>153035</Text> 
                <Caption>153035</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5' AND (Product) IN ('072', '226', '227'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>893</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.14.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>5552671</Text> 
                <Caption>5552671</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5' AND (Product) IN ('130', '142', '167', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>894</Top> 
                <Left>479</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.15.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>104964</Text> 
                <Caption>104964</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('065', '124'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>913</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.15.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>137934</Text> 
                <Caption>137934</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('072', '226', '227') and (Purchaser_Gov_ID) > ' ')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>913</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.15.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>325469</Text> 
                <Caption>325469</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('130', '142', '167', '145', '284') and (Purchaser_Gov_ID) > ' ')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>913</Top> 
                <Left>479</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.17.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>708415</Text> 
                <Caption>708415</Caption> 
                <Value>=[1.1.7A.A] + [1.1.7B.A] + [1.1.7C.A] + [1.1.7D.A] + [1.1.7E.A] + [1.1.7F.A] + [1.1.8.A] + [1.1.9.A] + [1.1.11.A] + [1.1.12.A] + [1.1.13A.A] + [1.1.13B.A] + [1.1.14.A] + [1.1.15.A] + [1.1.16.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>952</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.17.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>933482</Text> 
                <Caption>933482</Caption> 
                <Value>=[1.1.7A.C] + [1.1.7B.C] + [1.1.7C.C] + [1.1.7D.C] + [1.1.7E.C] + [1.1.7F.C] + [1.1.8.C] + [1.1.9.C] + [1.1.10.C] + [1.1.11.C] + [1.1.12.C] + [1.1.14.C] + [1.1.15.C] + [1.1.16.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>952</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.17.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>6764966</Text> 
                <Caption>6764966</Caption> 
                <Value>=[1.1.7A.B] + [1.1.7B.B] + [1.1.7C.B] + [1.1.7D.B] + [1.1.7E.B] + [1.1.7F.B] + [1.1.8.B] + [1.1.9.B] + [1.1.10.B] + [1.1.11.B] + [1.1.12.B] + [1.1.14.B] + [1.1.15.B] + [1.1.16.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>952</Top> 
                <Left>479</Left> 
                <Width>172</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.18.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>123240</Text> 
                <Caption>123240</Caption> 
                <Value>=[1.1.6.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>970</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.18.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>17653</Text> 
                <Caption>17653</Caption> 
                <Value>=[1.1.6.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>970</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.18.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>143981</Text> 
                <Caption>143981</Caption> 
                <Value>=[1.1.6.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>970</Top> 
                <Left>479</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.19.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>585175</Text> 
                <Caption>585175</Caption> 
                <Value>=[1.1.17.A] - [1.1.18.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>1009</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.19.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>915829</Text> 
                <Caption>915829</Caption> 
                <Value>=[1.1.17.C] - [1.1.18.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>1009</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.19.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>6620985</Text> 
                <Caption>6620985</Caption> 
                <Value>=[1.1.17.B] - [1.1.18.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>1009</Top> 
                <Left>479</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>No_Receipts_Sales</Name> 
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
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsCheckBox_90</Image> 
                <Top>216</Top> 
                <Left>649</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Amended_Return</Name> 
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
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsCheckBox_91</Image> 
                <Top>190</Top> 
                <Left>649</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Final_Return</Name> 
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
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsCheckBox_92</Image> 
                <Top>241</Top> 
                <Left>649</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>EFT_Payment</Name> 
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
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsCheckBox_93</Image> 
                <Top>267</Top> 
                <Left>649</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_90</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsTextBox_90</Image> 
                <Top>233</Top> 
                <Left>106</Left> 
                <Width>144</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_91</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsTextBox_90</Image> 
                <Top>264</Top> 
                <Left>155</Left> 
                <Width>95</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_92</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsTextBox_92</Image> 
                <Top>296</Top> 
                <Left>613</Left> 
                <Width>68</Width> 
                <Height>14</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_93</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsTextBox_92</Image> 
                <Top>296</Top> 
                <Left>716</Left> 
                <Width>75</Width> 
                <Height>14</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.A</Name> 
                <Type>TextBox </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>354</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.B</Name> 
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
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>354</Top> 
                <Left>482</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.C</Name> 
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
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>354</Top> 
                <Left>657</Left> 
                <Width>139</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.5.A</Name> 
                <Type>TextBox </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>547</Top> 
                <Left>313</Left> 
                <Width>162</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.5.B</Name> 
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
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>548</Top> 
                <Left>482</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.5.C</Name> 
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
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>548</Top> 
                <Left>657</Left> 
                <Width>138</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.11.A</Name> 
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
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>799</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.11.B</Name> 
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
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>799</Top> 
                <Left>481</Left> 
                <Width>172</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.11.C</Name> 
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
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>799</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.12.A</Name> 
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
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>817</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.12.B</Name> 
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
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>817</Top> 
                <Left>481</Left> 
                <Width>172</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.12.C</Name> 
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
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>817</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.16.A</Name> 
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
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>931</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.16.B</Name> 
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
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>932</Top> 
                <Left>479</Left> 
                <Width>172</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.16.C</Name> 
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
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsTextBox_91</Image> 
                <Top>932</Top> 
                <Left>657</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7a.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('065','124','125') and (Destination_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>625</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7a.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) in ('AL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>625</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7a.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>77 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>625</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7b.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) IN ('065','124','125') and (Destination_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>78 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>645</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7b.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) in ('FL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>79 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>645</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7b.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>80 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>645</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7c.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) IN ('065','124','125') and (Destination_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>664</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7c.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) in ('NC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>665</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7c.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>83 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>664</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7d.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) IN ('065','124','125') and (Destination_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>84 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>684</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7d.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) in ('SC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>85 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>684</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7d.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>86 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>684</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7e.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>196069</Text> 
                <Caption>196069</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) IN ('065','124','125') and (Destination_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>87 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>702</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7e.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>221360</Text> 
                <Caption>221360</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) in ('TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>702</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7e.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>311819</Text> 
                <Caption>311819</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>702</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7f.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) IN ('065','124','125') and (Destination_State) not in ('AL','FL','NC','SC','TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>90 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>722</Top> 
                <Left>312</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7f.C</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('072','226','227')  and (Destination_State) not in ('AL','FL','NC','SC','TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>91 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>722</Top> 
                <Left>656</Left> 
                <Width>140</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7f.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('130','142','167','145','284')  and (Destination_State) not in ('AL','FL','NC','SC','TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>92 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>722</Top> 
                <Left>481</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_94</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>0.0750000000</Text> 
                <Caption>0.0750000000</Caption> 
                <Value>=ROUND(SQL(select igf.GetCurrentTaxRate('DS(Filing_Jurisdiction)',DS(Filing_Period),'ST-MFT') as CurrentRate),4)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>93 </TabIndex> 
                <Image>tbrControlsLabel_94</Image> 
                <Top>115</Top> 
                <Left>64</Left> 
                <Width>100</Width> 
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
        <Name>MFD-04_2</Name> 
        <Title>Page 2</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_2.png</Image> 
        <FormType>Return</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>2.1.2a.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>378</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2a.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) = 'AL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>378</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2b.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>397</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2b.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) = 'FL')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>397</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2c.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>416</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2c.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) = 'NC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>416</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2d.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>434</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2d.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) = 'SC')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>434</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2e.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>4708</Text> 
                <Caption>4708</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>454</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2e.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>7359</Text> 
                <Caption>7359</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) = 'TN')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>454</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2f.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('054') AND (Origin_State) not in ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>474</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.2f.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '3' AND (Product) IN ('123', '224', '225') AND (Origin_State) not in ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>471</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>3653</Text> 
                <Caption>3653</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '2' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>493</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>7477</Text> 
                <Caption>7477</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '2' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>493</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>49153</Text> 
                <Caption>49153</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '1' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>512</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>66365</Text> 
                <Caption>66365</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '1' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>512</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>57514</Text> 
                <Caption>57514</Caption> 
                <Value>=[2.1.1.A] + [2.1.2A.A] + [2.1.2B.A] + [2.1.2C.A] + [2.1.2D.A] + [2.1.2E.A] + [2.1.2F.A] + [2.1.3.A] + [2.1.4.A] + [2.1.5.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>550</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>81201</Text> 
                <Caption>81201</Caption> 
                <Value>=[2.1.1.B] + [2.1.2A.B] + [2.1.2B.B] + [2.1.2C.B] + [2.1.2D.B] + [2.1.2E.B] + [2.1.2F.B] + [2.1.3.B] + [2.1.4.B] + [2.1.5.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>550</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>74330</Text> 
                <Caption>74330</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '8' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>722</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>90456</Text> 
                <Caption>90456</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '8' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>722</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>74070</Text> 
                <Caption>74070</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '6' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>741</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>148704</Text> 
                <Caption>148704</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '6' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>740</Top> 
                <Left>490</Left> 
                <Width>169</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>3740</Text> 
                <Caption>3740</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '10' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>760</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>7310</Text> 
                <Caption>7310</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '10' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>759</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2a.A_copy_16</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>249179</Text> 
                <Caption>249179</Caption> 
                <Value>=[2.1.17.A] - [2.1.18.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>986</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2a.B_copy_18</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>4336852</Text> 
                <Caption>4336852</Caption> 
                <Value>=[2.1.17.B] - [2.1.18.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>986</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.14.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>8330</Text> 
                <Caption>8330</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>872</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.14.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>3938628</Text> 
                <Caption>3938628</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>872</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.15.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>70569</Text> 
                <Caption>70569</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>891</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.15.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>99117</Text> 
                <Caption>99117</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) From vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' AND (Return_Code) = 'MFD-04' AND (Schedule_Code) = '5X' AND (Product) IN ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>891</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.17.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>306693</Text> 
                <Caption>306693</Caption> 
                <Value>=[2.1.7A.A] + [2.1.7B.A] + [2.1.7C.A] + [2.1.7D.A] + [2.1.7E.A] + [2.1.7F.A] + [2.1.8.A] + [2.1.9.A] + [2.1.10.A] + [2.1.11.A] + [2.1.12.A] + [2.1.14.A] + [2.1.15.A] + [2.1.16.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>928</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.17.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>4418053</Text> 
                <Caption>4418053</Caption> 
                <Value>=[2.1.7A.B] + [2.1.7B.B] + [2.1.7C.B] + [2.1.7D.B] + [2.1.7E.B] + [2.1.7F.B] + [2.1.8.B] + [2.1.9.B] + [2.1.10.B] + [2.1.11.B] + [2.1.12.B] + [2.1.14.B] + [2.1.15.B] + [2.1.16.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>928</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.18.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>57514</Text> 
                <Caption>57514</Caption> 
                <Value>=[2.1.6.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>948</Top> 
                <Left>321</Left> 
                <Width>163</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.18.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>81201</Text> 
                <Caption>81201</Caption> 
                <Value>=[2.1.6.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>948</Top> 
                <Left>490</Left> 
                <Width>167</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.A</Name> 
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
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>340</Top> 
                <Left>320</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.1.B</Name> 
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
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>340</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.A</Name> 
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
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>530</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.5.B</Name> 
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
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>531</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7A.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) in ('AL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>606</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7F.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) not in ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>702</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7E.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>75654</Text> 
                <Caption>75654</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) in ('TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>683</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7D.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) in ('SC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>664</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7C.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) in ('NC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>645</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7B.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('054')  and (Destination_State) in ('FL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>626</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7A.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) in ('AL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>606</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7B.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) in ('FL'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>626</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7C.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) in ('NC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>645</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7D.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) in ('SC'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>664</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7E.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>133838</Text> 
                <Caption>133838</Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) in ('TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>683</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.7F.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(Select SUM(Billed_Quantity) from vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and (Schedule_Code) = '7' and (Product) in ('123', '224', '225')  and (Destination_State) not in ('AL', 'FL', 'NC', 'SC', 'TN'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>702</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.11.A</Name> 
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
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>778</Top> 
                <Left>322</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.11.B</Name> 
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
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>779</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.12.B</Name> 
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
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>798</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.12.A</Name> 
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
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>798</Top> 
                <Left>320</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.16.A</Name> 
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
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>909</Top> 
                <Left>321</Left> 
                <Width>165</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>2.1.16.B</Name> 
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
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsTextBox_55</Image> 
                <Top>910</Top> 
                <Left>490</Left> 
                <Width>170</Width> 
                <Height>15</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_57</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsTextBox_57</Image> 
                <Top>227</Top> 
                <Left>112</Left> 
                <Width>143</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
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
        <Name>MFD-04_33</Name> 
        <Title>Page 3</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_3.png</Image> 
        <FormType>Return</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>3.1.1.A</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.126</Text> 
                <Caption>0.126</Caption> 
                <Value>=0.126</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>293</Top> 
                <Left>181</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.B</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>15381</Text> 
                <Caption>15381</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5' and (Product) in ('065', '124'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>293</Top> 
                <Left>306</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.C</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1938.006</Text> 
                <Caption>1938.006</Caption> 
                <Value>=[3.1.1.A] * [3.1.1.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>293</Top> 
                <Left>415</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.D</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9.69003</Text> 
                <Caption>9.69003</Caption> 
                <Value>=[3.1.1.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>293</Top> 
                <Left>525</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.1.E</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1928.31597</Text> 
                <Caption>1928.31597</Caption> 
                <Value>=[3.1.1.C] - [3.1.1.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>293</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.139</Text> 
                <Caption>0.139</Caption> 
                <Value>=0.139</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>318</Top> 
                <Left>181</Left> 
                <Width>97</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>5705706</Text> 
                <Caption>5705706</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5' and (Product) in ('072', '130', '142', '167', '226', '227', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>318</Top> 
                <Left>306</Left> 
                <Width>79</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>793093.134</Text> 
                <Caption>793093.134</Caption> 
                <Value>=[3.1.2.A] * [3.1.2.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>318</Top> 
                <Left>415</Left> 
                <Width>80</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>3965.46567</Text> 
                <Caption>3965.46567</Caption> 
                <Value>=[3.1.2.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>318</Top> 
                <Left>525</Left> 
                <Width>111</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>789127.66833</Text> 
                <Caption>789127.66833</Caption> 
                <Value>=[3.1.2.C] - [3.1.2.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>318</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.224</Text> 
                <Caption>0.224</Caption> 
                <Value>=0.224</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>357</Top> 
                <Left>181</Left> 
                <Width>97</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>8663</Text> 
                <Caption>8663</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Product) = '125' AND ((Schedule_Code) = '5' OR ((Schedule_Code) = '5X' and (Purchaser_Lic_Type) = 'DistAvGas')))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>357</Top> 
                <Left>306</Left> 
                <Width>79</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1940.512</Text> 
                <Caption>1940.512</Caption> 
                <Value>=[3.1.3.A] * [3.1.3.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>357</Top> 
                <Left>415</Left> 
                <Width>80</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9.70256</Text> 
                <Caption>9.70256</Caption> 
                <Value>=[3.1.3.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>357</Top> 
                <Left>525</Left> 
                <Width>111</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.3.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1930.80944</Text> 
                <Caption>1930.80944</Caption> 
                <Value>=[3.1.3.C] - [3.1.3.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>357</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.078</Text> 
                <Caption>0.078</Caption> 
                <Value>=0.078</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>393</Top> 
                <Left>181</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>8330</Text> 
                <Caption>8330</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5' and (Product) in ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>393</Top> 
                <Left>306</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>649.74</Text> 
                <Caption>649.74</Caption> 
                <Value>=[3.1.4.A] * [3.1.4.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>393</Top> 
                <Left>415</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>3.2487</Text> 
                <Caption>3.2487</Caption> 
                <Value>=[3.1.4.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>393</Top> 
                <Left>525</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.4.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>646.4913</Text> 
                <Caption>646.4913</Caption> 
                <Value>=[3.1.4.C] - [3.1.4.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>393</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.124</Text> 
                <Caption>0.124</Caption> 
                <Value>=0.124</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>418</Top> 
                <Left>181</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>3938628</Text> 
                <Caption>3938628</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5' and (Product) in ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>418</Top> 
                <Left>306</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>488389.872</Text> 
                <Caption>488389.872</Caption> 
                <Value>=[3.1.5.A] * [3.1.5.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>418</Top> 
                <Left>415</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>2441.94936</Text> 
                <Caption>2441.94936</Caption> 
                <Value>=[3.1.5.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>418</Top> 
                <Left>525</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>485947.92264</Text> 
                <Caption>485947.92264</Caption> 
                <Value>=[3.1.5.C] - [3.1.5.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>418</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.095</Text> 
                <Caption>0.095</Caption> 
                <Value>=0.095</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>544</Top> 
                <Left>182</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>104964</Text> 
                <Caption>104964</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5X' and (Product) in ('065','124'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>544</Top> 
                <Left>309</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9971.58</Text> 
                <Caption>9971.58</Caption> 
                <Value>=[3.1.6.A] * [3.1.6.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>544</Top> 
                <Left>417</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>49.8579</Text> 
                <Caption>49.8579</Caption> 
                <Value>=[3.1.6.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>544</Top> 
                <Left>527</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.6.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9921.7221</Text> 
                <Caption>9921.7221</Caption> 
                <Value>=[3.1.6.C] - [3.1.6.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>544</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.104</Text> 
                <Caption>0.104</Caption> 
                <Value>=0.104</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>568</Top> 
                <Left>182</Left> 
                <Width>97</Width> 
                <Height>37</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>463403</Text> 
                <Caption>463403</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5X' and (Product) in ('072', '130', '142', '167', '226', '227', '145', '284'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>568</Top> 
                <Left>309</Left> 
                <Width>79</Width> 
                <Height>37</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>48193.912</Text> 
                <Caption>48193.912</Caption> 
                <Value>=[3.1.7.A] * [3.1.7.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>568</Top> 
                <Left>417</Left> 
                <Width>80</Width> 
                <Height>37</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>240.96956</Text> 
                <Caption>240.96956</Caption> 
                <Value>=[3.1.7.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>568</Top> 
                <Left>527</Left> 
                <Width>111</Width> 
                <Height>37</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.7.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>47952.94244</Text> 
                <Caption>47952.94244</Caption> 
                <Value>=[3.1.7.C] - [3.1.7.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>568</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>37</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.168</Text> 
                <Caption>0.168</Caption> 
                <Value>=0.168</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>608</Top> 
                <Left>182</Left> 
                <Width>97</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>12540</Text> 
                <Caption>12540</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5X' and (Product) in ('125') and (Purchaser_Lic_Type) != 'DistAvGas')</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>608</Top> 
                <Left>309</Left> 
                <Width>79</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>2106.72</Text> 
                <Caption>2106.72</Caption> 
                <Value>=[3.1.8.A] * [3.1.8.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>608</Top> 
                <Left>417</Left> 
                <Width>80</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>10.5336</Text> 
                <Caption>10.5336</Caption> 
                <Value>=[3.1.8.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>608</Top> 
                <Left>527</Left> 
                <Width>111</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.8.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>2096.1864</Text> 
                <Caption>2096.1864</Caption> 
                <Value>=[3.1.8.C] - [3.1.8.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>608</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>32</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.059</Text> 
                <Caption>0.059</Caption> 
                <Value>=0.059</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>646</Top> 
                <Left>182</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>70569</Text> 
                <Caption>70569</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5X' and (Product) in ('054'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>646</Top> 
                <Left>309</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>4163.571</Text> 
                <Caption>4163.571</Caption> 
                <Value>=[3.1.9.A] * [3.1.9.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>646</Top> 
                <Left>417</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>20.817855</Text> 
                <Caption>20.817855</Caption> 
                <Value>=[3.1.9.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>646</Top> 
                <Left>527</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.9.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>4142.753145</Text> 
                <Caption>4142.753145</Caption> 
                <Value>=[3.1.9.C] - [3.1.9.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>646</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.A</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>0.093</Text> 
                <Caption>0.093</Caption> 
                <Value>=0.093</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>671</Top> 
                <Left>182</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.B</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>99117</Text> 
                <Caption>99117</Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM vw_WSTF WHERE (Filing_Jurisdiction) = 'GA' and (Return_Code) = 'MFD-04' and  (Schedule_Code) = '5X' and (Product) in ('123', '224', '225'))</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>671</Top> 
                <Left>309</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9217.881</Text> 
                <Caption>9217.881</Caption> 
                <Value>=[3.1.10.A] * [3.1.10.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>671</Top> 
                <Left>417</Left> 
                <Width>80</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>46.089405</Text> 
                <Caption>46.089405</Caption> 
                <Value>=[3.1.10.C] * 0.005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>671</Top> 
                <Left>527</Left> 
                <Width>111</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>9171.791595</Text> 
                <Caption>9171.791595</Caption> 
                <Value>=[3.1.10.C] - [3.1.10.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>671</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.5A.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1279581.20768</Text> 
                <Caption>1279581.20768</Caption> 
                <Value>=[3.1.1.E] + [3.1.2.E] + [3.1.3.E] + [3.1.4.E] + [3.1.5.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>443</Top> 
                <Left>701</Left> 
                <Width>99</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>3.1.10A.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>73285.39568</Text> 
                <Caption>73285.39568</Caption> 
                <Value>=[3.1.6.E] + [3.1.7.E] + [3.1.8.E] + [3.1.9.E] + [3.1.10.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>695</Top> 
                <Left>703</Left> 
                <Width>99</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_53</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_53</Image> 
                <Top>192</Top> 
                <Left>113</Left> 
                <Width>144</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_54</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_53</Image> 
                <Top>217</Top> 
                <Left>94</Left> 
                <Width>81</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_55</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_53</Image> 
                <Top>217</Top> 
                <Left>204</Left> 
                <Width>81</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
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
        <Name>MFD-04_47</Name> 
        <Title>Page 4</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_4.png</Image> 
        <FormType>Schedule</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>4.1.1.A</Name> 
                <Type>Label </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>ERR + ERR</Text> 
                <Caption>ERR + ERR</Caption> 
                <Value>=[MFD-04_1!1.1.14.A] + [MFD-04_1!1.1.15.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>343</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.1.C</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=[4.1.1.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>343</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.1.D</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.1.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>343</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.1.E</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.1.C] - [4.1.1.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>343</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.8.E</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>=[MFD-04_3!3.1.5A.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>541</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>28</Height> 
                <Alignment>Right</Alignment> 
                <Layer>5</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.9.E</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>=[MFD-04_3!3.1.10A.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>573</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>38</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>ERR + ERR</Text> 
                <Caption>ERR + ERR</Caption> 
                <Value>=[MFD-04_1!1.1.14.B] + [MFD-04_1!1.1.15.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>372</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=[4.1.2.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>372</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.2.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>372</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.2.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.2.C] - [4.1.2.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>372</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>ERR + ERR</Text> 
                <Caption>ERR + ERR</Caption> 
                <Value>=[MFD-04_1!1.1.14.C] + [MFD-04_1!1.1.15.C]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>401</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=[4.1.3.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>401</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.3.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>401</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.3.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.3.C] - [4.1.3.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>401</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>35</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>78899</Text> 
                <Caption>78899</Caption> 
                <Value>=[MFD-04_2!2.1.14.A]+ [MFD-04_2!2.1.15.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>440</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>5917.425</Text> 
                <Caption>5917.425</Caption> 
                <Value>=[4.1.4.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>440</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>29.587125</Text> 
                <Caption>29.587125</Caption> 
                <Value>=[4.1.4.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>440</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.4.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>5887.837875</Text> 
                <Caption>5887.837875</Caption> 
                <Value>=[4.1.4.C] - [4.1.4.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>440</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>25</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>4037745</Text> 
                <Caption>4037745</Caption> 
                <Value>=[MFD-04_2!2.1.14.B] + [MFD-04_2!2.1.15.B]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>469</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>302830.875</Text> 
                <Caption>302830.875</Caption> 
                <Value>=[4.1.5.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>469</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1514.154375</Text> 
                <Caption>1514.154375</Caption> 
                <Value>=[4.1.5.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>469</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.5.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>301316.720625</Text> 
                <Caption>301316.720625</Caption> 
                <Value>=[4.1.5.C] - [4.1.5.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>469</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>=[MFD-04_1!1.1.13A.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>493</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=[4.1.6.A] * .01</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>493</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.6.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>493</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.6.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.6.C] - [4.1.6.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>493</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>21</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.A</Name> 
                <Type>LABEL </Type> 
                <DataType>INTEGER </DataType> 
                <Visible>True </Visible> 
                <Text>ERR</Text> 
                <Caption>ERR</Caption> 
                <Value>=[MFD-04_1!1.1.13B.A]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>517</Top> 
                <Left>239</Left> 
                <Width>82</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.C</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Text> 
                <Caption>$$ERR:ERR is not defined Line: 1 Char: 0 No source code available.</Caption> 
                <Value>=[4.1.7.A] * .075</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>517</Top> 
                <Left>437</Left> 
                <Width>95</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.D</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.7.C] * .005</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>517</Top> 
                <Left>535</Left> 
                <Width>140</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>3</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.7.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.7.C] - [4.1.7.D]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>517</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>4</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.13.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[4.1.10.E] + [4.1.11.E] + [4.1.12.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>685</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>20</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.14.E</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>$$ERR:An unexpected error occured while parsing the script</Text> 
                <Caption>$$ERR:An unexpected error occured while parsing the script</Caption> 
                <Value>=[4.1.1.E] + [4.1.2.E] + [4.1.3.E] + [4.1.4.E] + [4.1.5.E] + [4.1.6.E] + [4.1.7.E] + [4.1.8.E] + [4.1.9.E] + [4.1.13.E]</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>708</Top> 
                <Left>704</Left> 
                <Width>79</Width> 
                <Height>22</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.11.E</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_36</Image> 
                <Top>638</Top> 
                <Left>597</Left> 
                <Width>103</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.12.E</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_37</Image> 
                <Top>661</Top> 
                <Left>597</Left> 
                <Width>103</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>4.1.10.E</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_38</Image> 
                <Top>615</Top> 
                <Left>597</Left> 
                <Width>103</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_36</Name> 
                <Type>TextBox </Type> 
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
                <Image>tbrControlsTextBox_36</Image> 
                <Top>188</Top> 
                <Left>118</Left> 
                <Width>143</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_37</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_36</Image> 
                <Top>217</Top> 
                <Left>103</Left> 
                <Width>81</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_38</Name> 
                <Type>TEXTBOX </Type> 
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
                <Image>tbrControlsTextBox_36</Image> 
                <Top>217</Top> 
                <Left>214</Left> 
                <Width>81</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
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
        <Name>MFD-04_55</Name> 
        <Title>Page 5</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_5.png</Image> 
        <FormType>Schedule</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>True</MultiPageForm> 
        <RowsPerPage>15</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>MFD-04_5</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>Carrier_Name_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>579</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>579</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>579</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>579</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>579</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>579</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>579</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>579</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360203</Text> 
                <Caption>360203</Caption> 
                <Value>=DS(BOL_Num):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>579</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7493</Text> 
                <Caption>7493</Caption> 
                <Value>=DS(Billed_Quantity):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>579</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>054</Name> 
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
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsCheckBox_19</Image> 
                <Top>361</Top> 
                <Left>244</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>065</Name> 
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
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsCheckBox_20</Image> 
                <Top>381</Top> 
                <Left>244</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>124</Name> 
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
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsCheckBox_21</Image> 
                <Top>403</Top> 
                <Left>244</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>125</Name> 
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
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsCheckBox_22</Image> 
                <Top>426</Top> 
                <Left>244</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>123</Name> 
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
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsCheckBox_23</Image> 
                <Top>451</Top> 
                <Left>244</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>130</Name> 
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
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsCheckBox_24</Image> 
                <Top>361</Top> 
                <Left>412</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>145</Name> 
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
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsCheckBox_25</Image> 
                <Top>381</Top> 
                <Left>412</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsCheckBox_26</Name> 
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
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsCheckBox_26</Image> 
                <Top>426</Top> 
                <Left>586</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>227</Name> 
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
                <Image>tbrControlsCheckBox_27</Image> 
                <Top>361</Top> 
                <Left>586</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>167</Name> 
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
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsCheckBox_28</Image> 
                <Top>381</Top> 
                <Left>586</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>226</Name> 
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
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsCheckBox_29</Image> 
                <Top>403</Top> 
                <Left>412</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsCheckBox_30</Name> 
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
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsCheckBox_30</Image> 
                <Top>403</Top> 
                <Left>586</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>284</Name> 
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
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsCheckBox_31</Image> 
                <Top>426</Top> 
                <Left>412</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsCheckBox_32</Name> 
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
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsCheckBox_32</Image> 
                <Top>451</Top> 
                <Left>412</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>606</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>606</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>606</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>606</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>606</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>606</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>606</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/6/2013 12:00:00 AM</Text> 
                <Caption>5/6/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>606</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>359341</Text> 
                <Caption>359341</Caption> 
                <Value>=DS(BOL_Num):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>606</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>4884</Text> 
                <Caption>4884</Caption> 
                <Value>=DS(Billed_Quantity):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>606</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>632</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>632</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>632</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>632</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>632</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>632</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>632</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/6/2013 12:00:00 AM</Text> 
                <Caption>5/6/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>632</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>359340</Text> 
                <Caption>359340</Caption> 
                <Value>=DS(BOL_Num):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>632</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>3987</Text> 
                <Caption>3987</Caption> 
                <Value>=DS(Billed_Quantity):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>632</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>658</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>658</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>658</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>658</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>658</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Orci Inc.</Text> 
                <Caption>Orci Inc.</Caption> 
                <Value>=DS(Seller_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>658</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>658</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>658</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360204</Text> 
                <Caption>360204</Caption> 
                <Value>=DS(BOL_Num):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>658</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1194</Text> 
                <Caption>1194</Caption> 
                <Value>=DS(Billed_Quantity):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>658</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>684</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>684</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>684</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>684</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>KY</Text> 
                <Caption>KY</Caption> 
                <Value>=DS(Destination_State):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>684</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>684</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>684</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>684</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360061</Text> 
                <Caption>360061</Caption> 
                <Value>=DS(BOL_Num):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>684</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7503</Text> 
                <Caption>7503</Caption> 
                <Value>=DS(Billed_Quantity):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>684</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>711</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>711</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>711</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>711</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>711</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Ligula Nullam Consulting</Text> 
                <Caption>Ligula Nullam Consulting</Caption> 
                <Value>=DS(Seller_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>711</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>711</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>711</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180835</Text> 
                <Caption>2180835</Caption> 
                <Value>=DS(BOL_Num):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>711</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>371</Text> 
                <Caption>371</Caption> 
                <Value>=DS(Billed_Quantity):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>711</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>737</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>737</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>737</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>77 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>737</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>78 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>737</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>A Dui Cras Incorporated</Text> 
                <Caption>A Dui Cras Incorporated</Caption> 
                <Value>=DS(Seller_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>79 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>737</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>80 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>737</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>737</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180834</Text> 
                <Caption>2180834</Caption> 
                <Value>=DS(BOL_Num):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>737</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7120</Text> 
                <Caption>7120</Caption> 
                <Value>=DS(Billed_Quantity):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>83 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>737</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>84 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>763</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>85 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>763</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>86 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>763</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>87 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>763</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>GA</Text> 
                <Caption>GA</Caption> 
                <Value>=DS(Destination_State):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>763</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Nibh Lacinia Corporation</Text> 
                <Caption>Nibh Lacinia Corporation</Caption> 
                <Value>=DS(Seller_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>763</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>90 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>763</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/3/2013 12:00:00 AM</Text> 
                <Caption>5/3/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>91 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>763</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>8125533</Text> 
                <Caption>8125533</Caption> 
                <Value>=DS(BOL_Num):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>92 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>763</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1523</Text> 
                <Caption>1523</Caption> 
                <Value>=DS(Billed_Quantity):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>93 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>763</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>94 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>789</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>95 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>789</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>96 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>789</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>97 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>789</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>KY</Text> 
                <Caption>KY</Caption> 
                <Value>=DS(Destination_State):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>98 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>789</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>99 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>789</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>100 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>789</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>101 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>789</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360351</Text> 
                <Caption>360351</Caption> 
                <Value>=DS(BOL_Num):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>102 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>789</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7586</Text> 
                <Caption>7586</Caption> 
                <Value>=DS(Billed_Quantity):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>103 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>789</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>104 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>816</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>105 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>816</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>106 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>816</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>107 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>816</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>KY</Text> 
                <Caption>KY</Caption> 
                <Value>=DS(Destination_State):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>108 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>816</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>109 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>816</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>110 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>816</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>816</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360223</Text> 
                <Caption>360223</Caption> 
                <Value>=DS(BOL_Num):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>816</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7492</Text> 
                <Caption>7492</Caption> 
                <Value>=DS(Billed_Quantity):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>816</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>842</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>842</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>116 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>842</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>842</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>842</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Ligula Nullam Consulting</Text> 
                <Caption>Ligula Nullam Consulting</Caption> 
                <Value>=DS(Seller_Name):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>119 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>842</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>120 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>842</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>121 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>842</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180816</Text> 
                <Caption>2180816</Caption> 
                <Value>=DS(BOL_Num):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>122 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>842</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>370</Text> 
                <Caption>370</Caption> 
                <Value>=DS(Billed_Quantity):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>123 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>842</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>124 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>868</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>125 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>868</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>126 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>868</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>127 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>868</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>128 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>868</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>A Dui Cras Incorporated</Text> 
                <Caption>A Dui Cras Incorporated</Caption> 
                <Value>=DS(Seller_Name):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>129 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>868</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>130 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>868</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>131 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>868</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180815</Text> 
                <Caption>2180815</Caption> 
                <Value>=DS(BOL_Num):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>132 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>868</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7120</Text> 
                <Caption>7120</Caption> 
                <Value>=DS(Billed_Quantity):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>133 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>868</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>134 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>894</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>135 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>894</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>136 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>894</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>137 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>894</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>138 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>894</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Orci Inc.</Text> 
                <Caption>Orci Inc.</Caption> 
                <Value>=DS(Seller_Name):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>139 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>894</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>140 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>894</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>141 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>894</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360054</Text> 
                <Caption>360054</Caption> 
                <Value>=DS(BOL_Num):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>142 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>894</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>1005</Text> 
                <Caption>1005</Caption> 
                <Value>=DS(Billed_Quantity):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>143 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>894</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>144 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>921</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>145 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>921</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>146 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>921</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>147 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>921</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>148 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>921</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>149 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>921</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>150 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>921</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/11/2013 12:00:00 AM</Text> 
                <Caption>5/11/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>151 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>921</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>360055</Text> 
                <Caption>360055</Caption> 
                <Value>=DS(BOL_Num):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>152 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>921</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_14</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>7699</Text> 
                <Caption>7699</Caption> 
                <Value>=DS(Billed_Quantity):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>153 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>921</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Vitae Corporation</Text> 
                <Caption>Vitae Corporation</Caption> 
                <Value>=DS(Carrier_Name):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>154 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>947</Top> 
                <Left>43</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>422242066</Text> 
                <Caption>422242066</Caption> 
                <Value>=DS(Carrier_Gov_ID):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>155 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>947</Top> 
                <Left>133</Left> 
                <Width>61</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>156 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>947</Top> 
                <Left>198</Left> 
                <Width>39</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_CS_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>157 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>947</Top> 
                <Left>242</Left> 
                <Width>86</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_City_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>158 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>947</Top> 
                <Left>333</Left> 
                <Width>89</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Acquired_From_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Felis Viverra Institute</Text> 
                <Caption>Felis Viverra Institute</Caption> 
                <Value>=DS(Seller_Name):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>159 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>947</Top> 
                <Left>426</Left> 
                <Width>71</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Supplier_GA_License_Number_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Lic_Num):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>160 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>947</Top> 
                <Left>502</Left> 
                <Width>95</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Received_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/10/2013 12:00:00 AM</Text> 
                <Caption>5/10/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>161 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>947</Top> 
                <Left>602</Left> 
                <Width>64</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>359942</Text> 
                <Caption>359942</Caption> 
                <Value>=DS(BOL_Num):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>162 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>947</Top> 
                <Left>671</Left> 
                <Width>70</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_15</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>3800</Text> 
                <Caption>3800</Caption> 
                <Value>=DS(Billed_Quantity):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>163 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>947</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sum_Billed_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text>69147</Text> 
                <Caption>69147</Caption> 
                <Value>=SUM(Billed_Gallons_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>164 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>973</Top> 
                <Left>746</Left> 
                <Width>57</Width> 
                <Height>23</Height> 
                <Alignment>Right</Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_166</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>165 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>256</Top> 
                <Left>184</Left> 
                <Width>130</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_167</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>166 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>256</Top> 
                <Left>431</Left> 
                <Width>130</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_168</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>167 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>256</Top> 
                <Left>634</Left> 
                <Width>130</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_169</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>168 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>289</Top> 
                <Left>155</Left> 
                <Width>130</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_170</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>169 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>290</Top> 
                <Left>421</Left> 
                <Width>130</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_171</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>170 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>290</Top> 
                <Left>580</Left> 
                <Width>35</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_172</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>171 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>450</Top> 
                <Left>67</Left> 
                <Width>84</Width> 
                <Height>18</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_173</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>172 </TabIndex> 
                <Image>tbrControlsTextBox_166</Image> 
                <Top>442</Top> 
                <Left>436</Left> 
                <Width>92</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
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
        <Name>MFD-04_6</Name> 
        <Title>Page 6</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_6.png</Image> 
        <FormType>Schedule</FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>True</MultiPageForm> 
        <RowsPerPage>15</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName>MFD-04_6</DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
            <Field>
                <Name>125</Name> 
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
                <Image>tbrControlsCheckBox_1</Image> 
                <Top>410</Top> 
                <Left>250</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>065</Name> 
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
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsCheckBox_2</Image> 
                <Top>359</Top> 
                <Left>250</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>130</Name> 
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
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsCheckBox_3</Image> 
                <Top>331</Top> 
                <Left>405</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsCheckBox_4</Name> 
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
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsCheckBox_4</Image> 
                <Top>436</Top> 
                <Left>405</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>124</Name> 
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
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsCheckBox_5</Image> 
                <Top>386</Top> 
                <Left>250</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>145</Name> 
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
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsCheckBox_6</Image> 
                <Top>359</Top> 
                <Left>405</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>054</Name> 
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
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsCheckBox_7</Image> 
                <Top>332</Top> 
                <Left>250</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>226</Name> 
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
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsCheckBox_8</Image> 
                <Top>386</Top> 
                <Left>405</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>284</Name> 
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
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsCheckBox_9</Image> 
                <Top>410</Top> 
                <Left>405</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>123</Name> 
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
                <Image>tbrControlsCheckBox_10</Image> 
                <Top>436</Top> 
                <Left>250</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>227</Name> 
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
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsCheckBox_11</Image> 
                <Top>332</Top> 
                <Left>581</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>167</Name> 
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
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsCheckBox_12</Image> 
                <Top>359</Top> 
                <Left>581</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>224</Name> 
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
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsCheckBox_13</Image> 
                <Top>386</Top> 
                <Left>581</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>225</Name> 
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
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsCheckBox_14</Image> 
                <Top>410</Top> 
                <Left>581</Left> 
                <Width>20</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>603</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>603</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>603</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>17 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>603</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>603</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>603</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>603</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>603</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/9/2013 12:00:00 AM</Text> 
                <Caption>5/9/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>603</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2179926</Text> 
                <Caption>2179926</Caption> 
                <Value>=DS(BOL_Num):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>602</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>380</Text> 
                <Caption>380</Caption> 
                <Value>=DS(Billed_Quantity):1</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>603</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>629</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>629</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>629</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>629</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>629</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>629</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>629</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>629</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/7/2013 12:00:00 AM</Text> 
                <Caption>5/7/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>629</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2179734</Text> 
                <Caption>2179734</Caption> 
                <Value>=DS(BOL_Num):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>629</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>377</Text> 
                <Caption>377</Caption> 
                <Value>=DS(Billed_Quantity):2</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>629</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>655</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>655</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>38 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>655</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>39 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>655</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>40 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>655</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>41 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>655</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>42 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>655</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>43 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>655</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/20/2013 12:00:00 AM</Text> 
                <Caption>5/20/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>44 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>655</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2182109</Text> 
                <Caption>2182109</Caption> 
                <Value>=DS(BOL_Num):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>45 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>655</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_3</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>371</Text> 
                <Caption>371</Caption> 
                <Value>=DS(Billed_Quantity):3</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>46 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>655</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>47 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>682</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>48 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>682</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>49 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>682</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>50 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>682</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>51 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>682</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>52 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>682</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>53 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>682</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>54 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>682</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/3/2013 12:00:00 AM</Text> 
                <Caption>5/3/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>55 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>682</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2184688</Text> 
                <Caption>2184688</Caption> 
                <Value>=DS(BOL_Num):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>56 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>682</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>376</Text> 
                <Caption>376</Caption> 
                <Value>=DS(Billed_Quantity):4</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>57 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>682</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>58 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>708</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>59 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>708</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>60 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>708</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>61 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>708</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>62 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>708</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>63 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>708</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>64 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>708</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>65 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>708</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/3/2013 12:00:00 AM</Text> 
                <Caption>5/3/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>66 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>708</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2184719</Text> 
                <Caption>2184719</Caption> 
                <Value>=DS(BOL_Num):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>67 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>708</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>377</Text> 
                <Caption>377</Caption> 
                <Value>=DS(Billed_Quantity):5</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>68 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>708</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>69 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>734</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>70 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>734</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>71 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>734</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>72 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>734</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>73 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>734</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>74 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>734</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>75 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>734</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>76 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>734</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/3/2013 12:00:00 AM</Text> 
                <Caption>5/3/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>77 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>734</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>1319641</Text> 
                <Caption>1319641</Caption> 
                <Value>=DS(BOL_Num):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>78 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>734</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>376</Text> 
                <Caption>376</Caption> 
                <Value>=DS(Billed_Quantity):6</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>79 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>734</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>80 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>759</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>81 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>759</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>82 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>759</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>83 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>759</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>84 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>759</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>85 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>759</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>86 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>759</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>87 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>759</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/4/2013 12:00:00 AM</Text> 
                <Caption>5/4/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>88 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>759</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2179124</Text> 
                <Caption>2179124</Caption> 
                <Value>=DS(BOL_Num):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>89 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>759</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>372</Text> 
                <Caption>372</Caption> 
                <Value>=DS(Billed_Quantity):7</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>90 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>759</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>91 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>786</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>92 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>786</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>93 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>786</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>94 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>786</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>95 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>786</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>96 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>786</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>97 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>786</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>98 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>786</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/9/2013 12:00:00 AM</Text> 
                <Caption>5/9/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>99 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>786</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180074</Text> 
                <Caption>2180074</Caption> 
                <Value>=DS(BOL_Num):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>100 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>786</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>372</Text> 
                <Caption>372</Caption> 
                <Value>=DS(Billed_Quantity):8</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>101 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>786</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>102 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>813</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>103 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>813</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>104 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>813</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>105 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>813</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>106 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>813</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>107 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>813</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>108 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>813</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>109 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>813</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/6/2013 12:00:00 AM</Text> 
                <Caption>5/6/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>110 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>813</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2179635</Text> 
                <Caption>2179635</Caption> 
                <Value>=DS(BOL_Num):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>111 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>813</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>365</Text> 
                <Caption>365</Caption> 
                <Value>=DS(Billed_Quantity):9</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>112 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>813</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>113 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>839</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>114 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>839</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>115 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>839</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>116 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>839</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>117 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>839</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>118 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>839</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>119 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>839</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>120 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>839</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/18/2013 12:00:00 AM</Text> 
                <Caption>5/18/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>121 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>839</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2181812</Text> 
                <Caption>2181812</Caption> 
                <Value>=DS(BOL_Num):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>122 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>839</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>374</Text> 
                <Caption>374</Caption> 
                <Value>=DS(Billed_Quantity):10</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>123 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>839</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>124 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>865</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>125 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>865</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>126 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>865</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>127 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>865</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>128 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>865</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>129 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>865</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>130 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>865</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>131 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>865</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/20/2013 12:00:00 AM</Text> 
                <Caption>5/20/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>132 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>865</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2182173</Text> 
                <Caption>2182173</Caption> 
                <Value>=DS(BOL_Num):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>133 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>865</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>198</Text> 
                <Caption>198</Caption> 
                <Value>=DS(Billed_Quantity):11</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>134 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>865</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>135 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>892</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>136 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>892</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>137 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>892</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>138 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>892</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>139 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>892</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>140 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>892</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>141 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>892</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>142 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>892</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/10/2013 12:00:00 AM</Text> 
                <Caption>5/10/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>143 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>892</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180226</Text> 
                <Caption>2180226</Caption> 
                <Value>=DS(BOL_Num):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>144 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>892</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>38</Text> 
                <Caption>38</Caption> 
                <Value>=DS(Billed_Quantity):12</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>145 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>892</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>146 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>918</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>147 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>918</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>148 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>918</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>149 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>918</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>150 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>918</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>151 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>918</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>152 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>918</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>153 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>918</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/12/2013 12:00:00 AM</Text> 
                <Caption>5/12/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>154 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>918</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2180777</Text> 
                <Caption>2180777</Caption> 
                <Value>=DS(BOL_Num):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>155 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>918</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_13</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>317</Text> 
                <Caption>317</Caption> 
                <Value>=DS(Billed_Quantity):13</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>156 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>918</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>157 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>944</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>158 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>944</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>159 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>944</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>160 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>944</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>161 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>944</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>162 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>944</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>163 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>944</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>164 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>944</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/23/2013 12:00:00 AM</Text> 
                <Caption>5/23/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>165 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>944</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2182618</Text> 
                <Caption>2182618</Caption> 
                <Value>=DS(BOL_Num):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>166 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>944</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_14</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>99</Text> 
                <Caption>99</Caption> 
                <Value>=DS(Billed_Quantity):14</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>167 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>944</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_Name_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Odio Associates</Text> 
                <Caption>Odio Associates</Caption> 
                <Value>=DS(Carrier_Name):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>168 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>970</Top> 
                <Left>43</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Carrier_FEIN_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Carrier_Gov_ID):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>169 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>970</Top> 
                <Left>108</Left> 
                <Width>60</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Terminal_Code_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Destination_FCN):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>170 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>970</Top> 
                <Left>368</Left> 
                <Width>70</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Mode_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>J</Text> 
                <Caption>J</Caption> 
                <Value>=DS(Mode_Of_Transport):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>171 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>970</Top> 
                <Left>171</Left> 
                <Width>45</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Origin_City_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Origin_State):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>172 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>970</Top> 
                <Left>219</Left> 
                <Width>53</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Destination_CS_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>TN</Text> 
                <Caption>TN</Caption> 
                <Value>=DS(Destination_State):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>173 </TabIndex> 
                <Image>tbrControlsLabel_28</Image> 
                <Top>970</Top> 
                <Left>276</Left> 
                <Width>89</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sold_To_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>Gravida Sit Amet Associates</Text> 
                <Caption>Gravida Sit Amet Associates</Caption> 
                <Value>=DS(Purchaser_Name):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>174 </TabIndex> 
                <Image>tbrControlsLabel_29</Image> 
                <Top>970</Top> 
                <Left>441</Left> 
                <Width>68</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Purchaser_FEIN_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>352054165</Text> 
                <Caption>352054165</Caption> 
                <Value>=DS(Purchaser_Gov_ID):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>175 </TabIndex> 
                <Image>tbrControlsLabel_30</Image> 
                <Top>970</Top> 
                <Left>513</Left> 
                <Width>85</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Date_Shipped_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>5/21/2013 12:00:00 AM</Text> 
                <Caption>5/21/2013 12:00:00 AM</Caption> 
                <Value>=DS(BOL_Date):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>176 </TabIndex> 
                <Image>tbrControlsLabel_31</Image> 
                <Top>970</Top> 
                <Left>603</Left> 
                <Width>57</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Document_Number_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>2182318</Text> 
                <Caption>2182318</Caption> 
                <Value>=DS(BOL_Num):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>177 </TabIndex> 
                <Image>tbrControlsLabel_32</Image> 
                <Top>970</Top> 
                <Left>665</Left> 
                <Width>72</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Billed_Gallons_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>184</Text> 
                <Caption>184</Caption> 
                <Value>=DS(Billed_Quantity):15</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>178 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>970</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>Sum_Billed_Gallons</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text>380 + 377 + 371 + 376 + 377 + 376 + 372 + 372 + 365 + 374 + 198 + 38 + 317 + 99 + 184</Text> 
                <Caption>380 + 377 + 371 + 376 + 377 + 376 + 372 + 372 + 365 + 374 + 198 + 38 + 317 + 99 + 184</Caption> 
                <Value>=SUM(Billed_Gallons_*)</Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>179 </TabIndex> 
                <Image>tbrControlsLabel_33</Image> 
                <Top>997</Top> 
                <Left>743</Left> 
                <Width>61</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_181</Name> 
                <Type>TextBox </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>180 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>243</Top> 
                <Left>186</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_182</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>181 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>243</Top> 
                <Left>432</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_183</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>182 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>243</Top> 
                <Left>635</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_184</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>183 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>276</Top> 
                <Left>156</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_185</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>184 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>276</Top> 
                <Left>423</Left> 
                <Width>131</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_186</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>185 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>276</Top> 
                <Left>591</Left> 
                <Width>36</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_187</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>186 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>426</Top> 
                <Left>434</Left> 
                <Width>97</Width> 
                <Height>20</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Comments></Comments> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsTextBox_188</Name> 
                <Type>TEXTBOX </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <FormatMask></FormatMask> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>187 </TabIndex> 
                <Image>tbrControlsTextBox_181</Image> 
                <Top>450</Top> 
                <Left>70</Left> 
                <Width>76</Width> 
                <Height>10</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>7</FontSize> 
                    <FontBold>False</FontBold> 
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
        <Name>MFD-04_7</Name> 
        <Title>Page 7</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_7.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
        </Fields>
    </Form>
    <Form>
        <Name>MFD-04_8</Name> 
        <Title>Page 8</Title> 
        <Visible>True</Visible> 
        <Image>C:\Users\aaron.badeau\Documents\Downloaded Forms\GA\MFD-04_9.png</Image> 
        <FormType></FormType> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <DataSetName></DataSetName> 
        <Instructions></Instructions> 
        <Comments></Comments> 
        <Fields>
        </Fields>
    </Form>
</Forms> 
