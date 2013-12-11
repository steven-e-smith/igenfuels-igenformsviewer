<?xml version="1.0" encoding="utf-8" ?> 
<Forms> 
    <Group>New_Brunswick</Group> 
    <Datasource>server=MFTDHMVGV1;database=IGenFuels_US_Demo;trusted_connection=true;</Datasource> 
    <GroupDataSet>Select * from WSTF</GroupDataSet> 
    <Form>
        <Name>ftg-tax</Name> 
        <Title>New Brunswick Fuel Tax Return Summary Form Gasoline and Related Products</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg-tax.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet></FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>123</Top> 
                <Left>167</Left> 
                <Width>259</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.1</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL1' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>229</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.1</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL2' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>254</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.1</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G1' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>280</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G2' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>305</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL6' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>356</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL5' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>331</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.1] + [1.1.2.1] + [1.1.3.1] + [1.1.4.1] + [1.1.5.1] - [1.1.6.1]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>383</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>429</Top> 
                <Left>433</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G4' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>454</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G5' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>479</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL7' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>506</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.7.1] - [1.1.8.1] - [1.1.9.1] - [1.1.10.1] -[1.1.11.1]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>533</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>0.1360</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>556</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1003</Top> 
                <Left>616</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.14.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.12.1] * [1.1.13.1]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>580</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1053</Top> 
                <Left>322</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.15.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL14' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>605</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL15' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>631</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL16' AND Product = 'GAS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>656</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.14.1] - [1.1.15.1] - [1.1.16.1] - [1.1.17.1]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>679</Top> 
                <Left>432</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL1' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>229</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL2' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>254</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G1' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>280</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G2' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>305</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL5' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>331</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL6' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>356</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.4] + [1.1.2.4] + [1.1.3.4] + [1.1.4.4] + [1.1.5.4] - [1.1.6.4]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>383</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>429</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G4' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>454</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G5' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>480</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL7' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>506</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.7.4] - [1.1.8.4] - [1.1.9.4] - [1.1.10.4] -[1.1.11.4]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>533</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>0.1360</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>556</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.12.4] * [1.1.13.4]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>580</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL14' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>605</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL15' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>631</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL16' AND Product = 'ETHANOL BLENDED GASOLINE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>656</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.4</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.14.4] - [1.1.15.4] - [1.1.16.4] - [1.1.17.4]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>679</Top> 
                <Left>846</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.1_copy_20</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>456</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.2_copy_21</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>481</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.3_copy_22</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>507</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.4_copy_23</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>532</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.5_copy_24</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>558</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.6_copy_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>583</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.7_copy_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>610</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.8_copy_27</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>656</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.9_copy_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>681</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.10_copy_29</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>707</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.11_copy_30</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>734</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.12_copy_31</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>760</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.13_copy_32</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>783</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.14_copy_33</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>807</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.15_copy_34</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>832</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.16_copy_35</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>858</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.17_copy_36</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>882</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.18_copy_37</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>906</Top> 
                <Left>1645</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'FTGL1' AND (Product) = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>229</Top> 
                <Left>986</Left> 
                <Width>135</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL2' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>254</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G1' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>280</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G2' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>305</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL5' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>331</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL6' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>356</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.5] + [1.1.2.5] + [1.1.3.5] + [1.1.4.5] + [1.1.5.5] - [1.1.6.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>383</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>429</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G4' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>454</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G5' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>479</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'FTGL7' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>506</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.7.5] - [1.1.8.5] - [1.1.9.5] - [1.1.10.5] -[1.1.11.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>533</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>0.0670</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>556</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.12.5] * [1.1.13.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>580</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL14' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>605</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL15' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>631</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Tax_Collected) FROM WSTF WHERE Schedule_Code = 'FTGL16' AND Product = 'LPG')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>656</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.5</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.14.5] + [1.1.15.5] + [1.1.16.5] + [1.1.17.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>679</Top> 
                <Left>986</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_76</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_76</Image> 
                <Top>91</Top> 
                <Left>1774</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_77</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_77</Image> 
                <Top>89</Top> 
                <Left>1805</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_78</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_78</Image> 
                <Top>80</Top> 
                <Left>1796</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_79</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_79</Image> 
                <Top>119</Top> 
                <Left>1261</Left> 
                <Width>188</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_80</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_80</Image> 
                <Top>744</Top> 
                <Left>434</Left> 
                <Width>270</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_81</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_81</Image> 
                <Top>1221</Top> 
                <Left>795</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_82</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_82</Image> 
                <Top>1042</Top> 
                <Left>152</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_83</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_83</Image> 
                <Top>744</Top> 
                <Left>712</Left> 
                <Width>265</Width> 
                <Height>32</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_84</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_84</Image> 
                <Top>1193</Top> 
                <Left>756</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_85</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_85</Image> 
                <Top>1200</Top> 
                <Left>801</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_86</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_86</Image> 
                <Top>1190</Top> 
                <Left>766</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.5.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.5.1] + [1.1.5.4] + [1.1.5.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>331</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.14.1] + [1.1.14.4] + [1.1.14.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>580</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.8_copy_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>989</Top> 
                <Left>1811</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.14.8_copy_2</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1118</Top> 
                <Left>1871</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.16.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.16.1] + [1.1.16.4] + [1.1.16.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>631</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>22</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.15.1] + [1.1.15.4] + [1.1.15.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>605</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.17.1] + [1.1.17.4] + [1.1.17.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>654</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.18.1] + [1.1.18.4] + [1.1.18.5]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>679</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>23</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.8</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.18.8]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>750</Top> 
                <Left>1400</Left> 
                <Width>136</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
        <Name>FTG-1</Name> 
        <Title>FTG-1 Imports</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg1.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>SELECT * FROM WSTF WHERE Schedule_Code = 'G1'</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>1092</Top> 
                <Left>202</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_2</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>1113</Top> 
                <Left>158</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_3</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>1119</Top> 
                <Left>163</Left> 
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
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>1096</Top> 
                <Left>296</Left> 
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
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>1139</Top> 
                <Left>291</Left> 
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
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>1146</Top> 
                <Left>397</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_7</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>1146</Top> 
                <Left>397</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_8</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>1160</Top> 
                <Left>337</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_9</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>1160</Top> 
                <Left>336</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_10</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>1160</Top> 
                <Left>336</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_11</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>United States</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>724</Top> 
                <Left>181</Left> 
                <Width>323</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
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
                <Name>tbrControlsLabel_12</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Product = 'GAS' AND Schedule_Code = 'G1')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>723</Top> 
                <Left>618</Left> 
                <Width>100</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_13</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>1151</Top> 
                <Left>554</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_14</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1009</Top> 
                <Left>606</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_15</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>1116</Top> 
                <Left>584</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_16</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>1179</Top> 
                <Left>755</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_17</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>1044</Top> 
                <Left>1584</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_18</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[tbrControlsLabel_12]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>723</Top> 
                <Left>1353</Left> 
                <Width>100</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_19</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_19</Image> 
                <Top>1172</Top> 
                <Left>1939</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_20</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_20</Image> 
                <Top>1194</Top> 
                <Left>1844</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>1208</Top> 
                <Left>1624</Left> 
                <Width>100</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_20</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[tbrControlsLabel_12]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>876</Top> 
                <Left>618</Left> 
                <Width>100</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
                    <FontBold>True</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_21</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[tbrControlsLabel_12]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>877</Top> 
                <Left>1353</Left> 
                <Width>100</Width> 
                <Height>29</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
                    <FontBold>True</FontBold> 
                    <FontItalic>False</FontItalic> 
                </Font> 
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_24</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>128</Top> 
                <Left>257</Left> 
                <Width>445</Width> 
                <Height>45</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_25</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>213</Top> 
                <Left>186</Left> 
                <Width>473</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_26</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>146</Top> 
                <Left>824</Left> 
                <Width>97</Width> 
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
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>214</Top> 
                <Left>1154</Left> 
                <Width>194</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
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
    <Form>
        <Name>FTG-2</Name> 
        <Title>FTG-2 Acquisitions within Jurisdiction</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg2.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>True</MultiPageForm> 
        <RowsPerPage>19</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>SELECT Distinct Seller_Name FROM WSTF WHERE Schedule_Code = 'G2'</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_25</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_24</Image> 
                <Top>151</Top> 
                <Left>270</Left> 
                <Width>445</Width> 
                <Height>45</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_26</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_25</Image> 
                <Top>234</Top> 
                <Left>203</Left> 
                <Width>473</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
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
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_26</Image> 
                <Top>168</Top> 
                <Left>826</Left> 
                <Width>97</Width> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_28</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_27</Image> 
                <Top>234</Top> 
                <Left>1238</Left> 
                <Width>194</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.2</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>337</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.3</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G2' AND (Product) = 'GAS' AND (Seller_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>312</Top> 
                <Left>624</Left> 
                <Width>99</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_7</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>370</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.2.3</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G2' AND (Product) = 'GAS' AND (Seller_Name) = '[1.1.1.2]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>340</Top> 
                <Left>624</Left> 
                <Width>99</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_9</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>309</Top> 
                <Left>1864</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.10</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.3]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>311</Top> 
                <Left>1338</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_11</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>10 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>353</Top> 
                <Left>1881</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_12</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>11 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>418</Top> 
                <Left>1719</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.2.10</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.2.3]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>12 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>340</Top> 
                <Left>1338</Left> 
                <Width>96</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>13 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>311</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_15</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>14 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>370</Top> 
                <Left>624</Left> 
                <Width>99</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_16</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>15 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>370</Top> 
                <Left>1338</Left> 
                <Width>96</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_17</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>16 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>401</Top> 
                <Left>1943</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_19</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.10)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>18 </TabIndex> 
                <Image>tbrControlsLabel_19</Image> 
                <Top>865</Top> 
                <Left>1338</Left> 
                <Width>98</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>19 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>460</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>20 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>428</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_15</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>21 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>401</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>22 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>547</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>23 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>515</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_16</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>24 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>488</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>25 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>635</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>26 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>602</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_17</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>27 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>576</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>28 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>716</Top> 
                <Left>196</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>29 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>689</Top> 
                <Left>199</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_18</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>30 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>661</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>31 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>1091</Top> 
                <Left>608</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>32 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>1064</Top> 
                <Left>611</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>33 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>1036</Top> 
                <Left>610</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_12</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>34 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>835</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>35 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>803</Top> 
                <Left>197</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_19</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>36 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>778</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_11</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Seller_Name):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>37 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>748</Top> 
                <Left>198</Left> 
                <Width>315</Width> 
                <Height>30</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_38</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_38</Image> 
                <Top>1250</Top> 
                <Left>611</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_39</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.3)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_39</Image> 
                <Top>865</Top> 
                <Left>623</Left> 
                <Width>102</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_40</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_40</Image> 
                <Top>1285</Top> 
                <Left>714</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_41</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_41</Image> 
                <Top>1302</Top> 
                <Left>715</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_42</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_42</Image> 
                <Top>1292</Top> 
                <Left>707</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_43</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_43</Image> 
                <Top>1315</Top> 
                <Left>724</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_44</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_44</Image> 
                <Top>1312</Top> 
                <Left>659</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>FTG-3</Name> 
        <Title>FTG-3 Exports</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg3.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>False</MultiPageForm> 
        <RowsPerPage>0</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>SELECT * FROM WSTF WHERE Schedule_Code = 'G3'</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>United States</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_1</Image> 
                <Top>721</Top> 
                <Left>198</Left> 
                <Width>317</Width> 
                <Height>25</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>10</FontSize> 
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
                <Name>1.1.5.2</Name> 
                <Type>Label </Type> 
                <DataType>DECIMAL </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'GAS' AND Destination_State = 'NF')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_2</Image> 
                <Top>429</Top> 
                <Left>625</Left> 
                <Width>97</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_3</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>236</Top> 
                <Left>203</Left> 
                <Width>397</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_4</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/01</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>164</Top> 
                <Left>830</Left> 
                <Width>97</Width> 
                <Height>31</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_5</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>159</Top> 
                <Left>273</Left> 
                <Width>303</Width> 
                <Height>38</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_6</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>232</Top> 
                <Left>1262</Left> 
                <Width>179</Width> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.7.6</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'LPG' AND Destination_State = 'NS')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>487</Top> 
                <Left>1043</Left> 
                <Width>95</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.2</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'GAS' AND Destination_State = 'US')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>720</Top> 
                <Left>625</Left> 
                <Width>97</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.2</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'GAS' AND Destination_State = 'PE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>574</Top> 
                <Left>624</Left> 
                <Width>97</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.6</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE Schedule_Code = 'G3' AND Product = 'LPG' AND Destination_State = 'PE')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>574</Top> 
                <Left>1043</Left> 
                <Width>95</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.9</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.5.2]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>429</Top> 
                <Left>1339</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.9</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.10.*)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_12</Image> 
                <Top>574</Top> 
                <Left>1339</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.9</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.7.6]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_13</Image> 
                <Top>486</Top> 
                <Left>1339</Left> 
                <Width>96</Width> 
                <Height>26</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_14</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_14</Image> 
                <Top>831</Top> 
                <Left>1767</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.15.9</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.15.2]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_15</Image> 
                <Top>720</Top> 
                <Left>1339</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_16</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_16</Image> 
                <Top>850</Top> 
                <Left>1767</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_17</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_17</Image> 
                <Top>799</Top> 
                <Left>1691</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_18</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_18</Image> 
                <Top>683</Top> 
                <Left>1764</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.20.2</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.2)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_19</Image> 
                <Top>865</Top> 
                <Left>626</Left> 
                <Width>97</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.6</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.6)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_20</Image> 
                <Top>864</Top> 
                <Left>1043</Left> 
                <Width>95</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_21</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_21</Image> 
                <Top>1238</Top> 
                <Left>1699</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>=1.1.20.9</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.9)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_22</Image> 
                <Top>865</Top> 
                <Left>1340</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_23</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_23</Image> 
                <Top>1246</Top> 
                <Left>1785</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
        </Fields>
    </Form>
    <Form>
        <Name>FTG-4</Name> 
        <Title>FTG-4 Dispositions with Jurisdiction</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg4.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>True</MultiPageForm> 
        <RowsPerPage>19</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>SELECT DISTINCT Purchaser_Name FROM WSTF WHERE Schedule_Code = 'G4'</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>159</Top> 
                <Left>273</Left> 
                <Width>303</Width> 
                <Height>38</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_4</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>236</Top> 
                <Left>203</Left> 
                <Width>397</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>164</Top> 
                <Left>830</Left> 
                <Width>97</Width> 
                <Height>31</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>236</Top> 
                <Left>1257</Left> 
                <Width>179</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>312</Top> 
                <Left>194</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.3</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>311</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.6</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>312</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.7</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>312</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_9</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>303</Top> 
                <Left>1659</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>tbrControlsLabel_10</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>312</Top> 
                <Left>1634</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.1.10</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.1.3] + [1.1.1.6] + [1.1.1.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>311</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):2</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>341</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.2.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>341</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.2.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>341</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.2.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>341</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.2.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.2.3] + [1.1.2.6] + [1.1.2.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>341</Top> 
                <Left>1344</Left> 
                <Width>97</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):3</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>370</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.3.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>370</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.3.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>370</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.3.3] + [1.1.3.6] + [1.1.3.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>370</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):4</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>399</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.4.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>399</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.4.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>399</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.4.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>399</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.4.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.4.3] + [1.1.4.6] + [1.1.4.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>400</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.5.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>428</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.5.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>428</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.5.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>428</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.5.3] + [1.1.5.6] + [1.1.5.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>428</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):5</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>428</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.6.3] + [1.1.6.6] + [1.1.6.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>457</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.6.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>457</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.6.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>457</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.5.3_copy_9</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>608</Top> 
                <Left>-119</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.5.1_copy_10</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>607</Top> 
                <Left>-562</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.6.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):6</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>457</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.6.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.6.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>457</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):7</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>486</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.7.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>486</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.7.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>486</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.7.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>486</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.7.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.7.3] + [1.1.7.6] + [1.1.7.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>486</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):8</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>515</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.8.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>515</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.8.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>515</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.8.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>515</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.8.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.8.3] + [1.1.8.6] + [1.1.8.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>515</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):9</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>544</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.9.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>544</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.9.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>544</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.9.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>544</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.9.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.9.3] + [1.1.9.6] + [1.1.9.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>543</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):10</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>574</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.10.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>574</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.10.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>574</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.10.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>574</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.10.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.10.3] + [1.1.10.6] + [1.1.10.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>574</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):11</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>604</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.11.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>604</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.11.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>604</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.11.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>604</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.11.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.11.3] + [1.1.11.6] + [1.1.11.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>604</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):12</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>633</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.12.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>633</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.12.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>633</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.12.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>633</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.12.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.12.3] + [1.1.12.6] + [1.1.12.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>633</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):13</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>662</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.13.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>662</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.13.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>662</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.13.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>662</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.13.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.13.3] + [1.1.13.6] + [1.1.13.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>662</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):14</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>691</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.14.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>691</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.14.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>691</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.14.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>691</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.14.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.14.3] + [1.1.14.6] + [1.1.14.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>691</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):15</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>721</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.15.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>721</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.15.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>721</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.15.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>721</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.15.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.15.3] + [1.1.15.6] + [1.1.15.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>721</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):16</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>750</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.16.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>750</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.16.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>750</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.16.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>750</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.16.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.16.3] + [1.1.16.6] + [1.1.16.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>750</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):17</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>779</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.17.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>779</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.17.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>779</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.17.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>779</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.17.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.17.3] + [1.1.17.6] + [1.1.17.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>779</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):18</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>808</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.18.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>808</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.18.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>808</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.18.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>808</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.18.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List>=[1.1.18.3] + [1.1.18.6] + [1.1.18.7]</List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>808</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.19.1</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):19</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>837</Top> 
                <Left>193</Left> 
                <Width>331</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>1</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.19.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.19.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>837</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.19.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'ETHANOL BLENDED GASOLINE'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.19.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>837</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.19.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'LPG'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.19.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>837</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.19.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=[1.1.19.3] + [1.1.19.6] + [1.1.19.7]</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>837</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.1</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.3)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>865</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.6</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.6)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>865</Top> 
                <Left>928</Left> 
                <Width>115</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.7</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.7)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>865</Top> 
                <Left>1044</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.10</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SUM(1.1.*.10)</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_11</Image> 
                <Top>865</Top> 
                <Left>1344</Left> 
                <Width>96</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.3.3</Name> 
                <Type>LABEL </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Product) = 'GAS'  AND (Schedule_Code) = 'G4' AND (Purchaser_Name) = '[1.1.3.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>370</Top> 
                <Left>638</Left> 
                <Width>88</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>2</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
        <Name>FTG-5</Name> 
        <Title>FTG-5 Exempt Sales</Title> 
        <Visible>True</Visible> 
        <Image>C:\Apps\IGenFuels\FormImages\CA-ftg5.png</Image> 
        <ImageHeight>900</ImageHeight> 
        <ImageWidth>900</ImageWidth> 
        <MultiPageForm>True</MultiPageForm> 
        <RowsPerPage>19</RowsPerPage> 
        <ProcessingOrder>999</ProcessingOrder> 
        <PrintOrientation>P</PrintOrientation> 
        <FormDataSet>SELECT DISTINCT Purchaser_Name FROM WSTF WHERE Schedule_Code = 'G5'</FormDataSet> 
        <Instructions></Instructions> 
        <Fields>
            <Field>
                <Name>tbrControlsLabel_7</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>New Brunswick</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>0 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>152</Top> 
                <Left>266</Left> 
                <Width>303</Width> 
                <Height>38</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_5</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>DEMO CO</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>1 </TabIndex> 
                <Image>tbrControlsLabel_3</Image> 
                <Top>229</Top> 
                <Left>196</Left> 
                <Width>397</Width> 
                <Height>21</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_6</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>2013/06/30</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>2 </TabIndex> 
                <Image>tbrControlsLabel_4</Image> 
                <Top>157</Top> 
                <Left>831</Left> 
                <Width>97</Width> 
                <Height>31</Height> 
                <Alignment></Alignment> 
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
                <Name>tbrControlsLabel_8</Name> 
                <Type>LABEL </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>123456789</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>3 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>228</Top> 
                <Left>1255</Left> 
                <Width>179</Width> 
                <Height>24</Height> 
                <Alignment></Alignment> 
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
                <Name>1.1.1.1</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=DS(Purchaser_Name):1</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>4 </TabIndex> 
                <Image>tbrControlsLabel_5</Image> 
                <Top>306</Top> 
                <Left>192</Left> 
                <Width>333</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.7</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G5' AND Product = 'LPG' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>5 </TabIndex> 
                <Image>tbrControlsLabel_6</Image> 
                <Top>306</Top> 
                <Left>1046</Left> 
                <Width>97</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.1.10</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G5' AND Product = 'LPG' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>6 </TabIndex> 
                <Image>tbrControlsLabel_7</Image> 
                <Top>306</Top> 
                <Left>1344</Left> 
                <Width>97</Width> 
                <Height>28</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>1.1.20.7</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G5' AND Product = 'LPG' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>7 </TabIndex> 
                <Image>tbrControlsLabel_8</Image> 
                <Top>868</Top> 
                <Left>1046</Left> 
                <Width>98</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
                <Name>tbrControlsLabel_9</Name> 
                <Type>Label </Type> 
                <DataType>TEXT </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value></Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>8 </TabIndex> 
                <Image>tbrControlsLabel_9</Image> 
                <Top>19</Top> 
                <Left>1665</Left> 
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
                <Properties> 
                </Properties> 
                <Rules> 
                    <Rule></Rule> 
                </Rules> 
            </Field>
            <Field>
                <Name>1.1.20.10</Name> 
                <Type>Label </Type> 
                <DataType>NUMERIC </DataType> 
                <Visible>True </Visible> 
                <Text></Text> 
                <Caption></Caption> 
                <Value>=SQL(SELECT SUM(Billed_Quantity) FROM WSTF WHERE (Schedule_Code) = 'G5' AND Product = 'LPG' AND (Purchaser_Name) = '[1.1.1.1]')</Value> 
                <Instructions></Instructions> 
                <List></List> 
                <Tag> </Tag> 
                <TabIndex>9 </TabIndex> 
                <Image>tbrControlsLabel_10</Image> 
                <Top>868</Top> 
                <Left>1344</Left> 
                <Width>97</Width> 
                <Height>27</Height> 
                <Alignment></Alignment> 
                <Layer>0</Layer> 
                <EDIFlag>N</EDIFlag> 
                <EDIName></EDIName> 
                <Font> 
                    <FontName>Microsoft Sans Sarif</FontName> 
                    <FontSize>9</FontSize> 
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
