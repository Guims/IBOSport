.class public final enum Lio/realm/RealmFieldType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/RealmFieldType;",
        ">;"
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/RealmFieldType;

.field public static final enum BINARY:Lio/realm/RealmFieldType;

.field public static final enum BINARY_LIST:Lio/realm/RealmFieldType;

.field public static final enum BINARY_SET:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_LIST:Lio/realm/RealmFieldType;

.field public static final enum BOOLEAN_SET:Lio/realm/RealmFieldType;

.field public static final enum DATE:Lio/realm/RealmFieldType;

.field public static final enum DATE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DATE_SET:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_LIST:Lio/realm/RealmFieldType;

.field public static final enum DECIMAL128_SET:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_LIST:Lio/realm/RealmFieldType;

.field public static final enum DOUBLE_SET:Lio/realm/RealmFieldType;

.field public static final enum FLOAT:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_LIST:Lio/realm/RealmFieldType;

.field public static final enum FLOAT_SET:Lio/realm/RealmFieldType;

.field public static final enum INTEGER:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_LIST:Lio/realm/RealmFieldType;

.field public static final enum INTEGER_SET:Lio/realm/RealmFieldType;

.field public static final enum LINKING_OBJECTS:Lio/realm/RealmFieldType;

.field public static final enum LINK_SET:Lio/realm/RealmFieldType;

.field public static final enum LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED:Lio/realm/RealmFieldType;

.field public static final enum MIXED_LIST:Lio/realm/RealmFieldType;

.field public static final enum MIXED_SET:Lio/realm/RealmFieldType;

.field public static final enum OBJECT:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_LIST:Lio/realm/RealmFieldType;

.field public static final enum OBJECT_ID_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING:Lio/realm/RealmFieldType;

.field public static final enum STRING_LIST:Lio/realm/RealmFieldType;

.field public static final enum STRING_SET:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

.field public static final enum STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

.field public static final enum TYPED_LINK:Lio/realm/RealmFieldType;

.field public static final enum UUID:Lio/realm/RealmFieldType;

.field public static final enum UUID_LIST:Lio/realm/RealmFieldType;

.field public static final enum UUID_SET:Lio/realm/RealmFieldType;

.field private static final basicTypes:[Lio/realm/RealmFieldType;

.field private static final listTypes:[Lio/realm/RealmFieldType;

.field private static final mapTypes:[Lio/realm/RealmFieldType;

.field private static final setTypes:[Lio/realm/RealmFieldType;


# instance fields
.field private final nativeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 57

    new-instance v1, Lio/realm/RealmFieldType;

    const-string v0, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    move v0, v2

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    new-instance v3, Lio/realm/RealmFieldType;

    const-string v4, "STRING"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    new-instance v4, Lio/realm/RealmFieldType;

    const-string v5, "BINARY"

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    new-instance v5, Lio/realm/RealmFieldType;

    const-string v6, "DATE"

    const/16 v8, 0x8

    invoke-direct {v5, v6, v7, v8}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/realm/RealmFieldType;->DATE:Lio/realm/RealmFieldType;

    new-instance v6, Lio/realm/RealmFieldType;

    const-string v7, "FLOAT"

    const/4 v9, 0x5

    const/16 v10, 0x9

    invoke-direct {v6, v7, v9, v10}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    new-instance v7, Lio/realm/RealmFieldType;

    const-string v9, "DOUBLE"

    const/4 v11, 0x6

    const/16 v12, 0xa

    invoke-direct {v7, v9, v11, v12}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    new-instance v9, Lio/realm/RealmFieldType;

    const-string v13, "OBJECT"

    const/4 v14, 0x7

    const/16 v15, 0xc

    invoke-direct {v9, v13, v14, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    move-object v13, v9

    new-instance v9, Lio/realm/RealmFieldType;

    const-string v14, "DECIMAL128"

    const/16 v0, 0xb

    invoke-direct {v9, v14, v8, v0}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/realm/RealmFieldType;->DECIMAL128:Lio/realm/RealmFieldType;

    new-instance v8, Lio/realm/RealmFieldType;

    const-string v14, "OBJECT_ID"

    const/16 v15, 0xf

    invoke-direct {v8, v14, v10, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/realm/RealmFieldType;->OBJECT_ID:Lio/realm/RealmFieldType;

    new-instance v10, Lio/realm/RealmFieldType;

    const-string v14, "UUID"

    const/16 v15, 0x11

    invoke-direct {v10, v14, v12, v15}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/realm/RealmFieldType;->UUID:Lio/realm/RealmFieldType;

    new-instance v12, Lio/realm/RealmFieldType;

    const-string v14, "MIXED"

    invoke-direct {v12, v14, v0, v11}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/realm/RealmFieldType;->MIXED:Lio/realm/RealmFieldType;

    move-object v11, v10

    move-object v10, v8

    move-object v8, v13

    new-instance v13, Lio/realm/RealmFieldType;

    const-string v0, "TYPED_LINK"

    const/16 v14, 0x10

    const/16 v15, 0xc

    invoke-direct {v13, v0, v15, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/realm/RealmFieldType;->TYPED_LINK:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v15, "LIST"

    const/16 v14, 0xd

    invoke-direct {v0, v15, v14, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    new-instance v15, Lio/realm/RealmFieldType;

    const-string v14, "LINKING_OBJECTS"

    move-object/from16 v20, v0

    const/16 v0, 0xe

    invoke-direct {v15, v14, v0, v0}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lio/realm/RealmFieldType;->LINKING_OBJECTS:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v14, "INTEGER_LIST"

    move-object/from16 v21, v1

    const/16 v1, 0x80

    move-object/from16 v22, v2

    const/16 v2, 0xf

    invoke-direct {v0, v14, v2, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const-string v14, "BOOLEAN_LIST"

    const/16 v1, 0x81

    move-object/from16 v23, v0

    const/16 v0, 0x10

    invoke-direct {v2, v14, v0, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN_LIST:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v1, "STRING_LIST"

    const/16 v14, 0x82

    move-object/from16 v17, v2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_LIST:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x84

    const-string v14, "BINARY_LIST"

    move-object/from16 v19, v0

    const/16 v0, 0x12

    invoke-direct {v1, v14, v0, v2}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->BINARY_LIST:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v14, 0x13

    const/16 v0, 0x88

    move-object/from16 v24, v1

    const-string v1, "DATE_LIST"

    invoke-direct {v2, v1, v14, v0}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->DATE_LIST:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v1, 0x14

    const/16 v14, 0x89

    move-object/from16 v25, v2

    const-string v2, "FLOAT_LIST"

    invoke-direct {v0, v2, v1, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->FLOAT_LIST:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x15

    const/16 v14, 0x8a

    move-object/from16 v26, v0

    const-string v0, "DOUBLE_LIST"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->DOUBLE_LIST:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x16

    const/16 v14, 0x8b

    move-object/from16 v27, v1

    const-string v1, "DECIMAL128_LIST"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DECIMAL128_LIST:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x17

    const/16 v14, 0x8f

    move-object/from16 v28, v0

    const-string v0, "OBJECT_ID_LIST"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->OBJECT_ID_LIST:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x18

    const/16 v14, 0x91

    move-object/from16 v29, v1

    const-string v1, "UUID_LIST"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->UUID_LIST:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x19

    const/16 v14, 0x86

    move-object/from16 v30, v0

    const-string v0, "MIXED_LIST"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->MIXED_LIST:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v2, "STRING_TO_INTEGER_MAP"

    const/16 v14, 0x1a

    move-object/from16 v31, v1

    const/16 v1, 0x200

    invoke-direct {v0, v2, v14, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_INTEGER_MAP:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v14, 0x1b

    const/16 v1, 0x201

    move-object/from16 v33, v0

    const-string v0, "STRING_TO_BOOLEAN_MAP"

    invoke-direct {v2, v0, v14, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->STRING_TO_BOOLEAN_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v1, 0x1c

    const/16 v14, 0x202

    move-object/from16 v34, v2

    const-string v2, "STRING_TO_STRING_MAP"

    invoke-direct {v0, v2, v1, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_STRING_MAP:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x1d

    const/16 v14, 0x204

    move-object/from16 v35, v0

    const-string v0, "STRING_TO_BINARY_MAP"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->STRING_TO_BINARY_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x1e

    const/16 v14, 0x208

    move-object/from16 v36, v1

    const-string v1, "STRING_TO_DATE_MAP"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_DATE_MAP:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x1f

    const/16 v14, 0x209

    move-object/from16 v37, v0

    const-string v0, "STRING_TO_FLOAT_MAP"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->STRING_TO_FLOAT_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x20

    const/16 v14, 0x20a

    move-object/from16 v38, v1

    const-string v1, "STRING_TO_DOUBLE_MAP"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_DOUBLE_MAP:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x21

    const/16 v14, 0x20b

    move-object/from16 v39, v0

    const-string v0, "STRING_TO_DECIMAL128_MAP"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->STRING_TO_DECIMAL128_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x22

    const/16 v14, 0x20f

    move-object/from16 v40, v1

    const-string v1, "STRING_TO_OBJECT_ID_MAP"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_OBJECT_ID_MAP:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x23

    const/16 v14, 0x211

    move-object/from16 v41, v0

    const-string v0, "STRING_TO_UUID_MAP"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->STRING_TO_UUID_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x24

    const/16 v14, 0x206

    move-object/from16 v42, v1

    const-string v1, "STRING_TO_MIXED_MAP"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_TO_MIXED_MAP:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x25

    const/16 v14, 0x20c

    move-object/from16 v43, v0

    const-string v0, "STRING_TO_LINK_MAP"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->STRING_TO_LINK_MAP:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const-string v2, "INTEGER_SET"

    const/16 v14, 0x26

    move-object/from16 v44, v1

    const/16 v1, 0x100

    invoke-direct {v0, v2, v14, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->INTEGER_SET:Lio/realm/RealmFieldType;

    new-instance v2, Lio/realm/RealmFieldType;

    const/16 v14, 0x27

    const/16 v1, 0x101

    move-object/from16 v46, v0

    const-string v0, "BOOLEAN_SET"

    invoke-direct {v2, v0, v14, v1}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lio/realm/RealmFieldType;->BOOLEAN_SET:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v1, 0x28

    const/16 v14, 0x102

    move-object/from16 v47, v2

    const-string v2, "STRING_SET"

    invoke-direct {v0, v2, v1, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->STRING_SET:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x29

    const/16 v14, 0x104

    move-object/from16 v48, v0

    const-string v0, "BINARY_SET"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->BINARY_SET:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x2a

    const/16 v14, 0x108

    move-object/from16 v49, v1

    const-string v1, "DATE_SET"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DATE_SET:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x2b

    const/16 v14, 0x109

    move-object/from16 v50, v0

    const-string v0, "FLOAT_SET"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->FLOAT_SET:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x2c

    const/16 v14, 0x10a

    move-object/from16 v51, v1

    const-string v1, "DOUBLE_SET"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->DOUBLE_SET:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x2d

    const/16 v14, 0x10b

    move-object/from16 v52, v0

    const-string v0, "DECIMAL128_SET"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->DECIMAL128_SET:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x2e

    const/16 v14, 0x10f

    move-object/from16 v53, v1

    const-string v1, "OBJECT_ID_SET"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->OBJECT_ID_SET:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x2f

    const/16 v14, 0x111

    move-object/from16 v54, v0

    const-string v0, "UUID_SET"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->UUID_SET:Lio/realm/RealmFieldType;

    new-instance v0, Lio/realm/RealmFieldType;

    const/16 v2, 0x30

    const/16 v14, 0x10c

    move-object/from16 v55, v1

    const-string v1, "LINK_SET"

    invoke-direct {v0, v1, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/RealmFieldType;->LINK_SET:Lio/realm/RealmFieldType;

    new-instance v1, Lio/realm/RealmFieldType;

    const/16 v2, 0x31

    const/16 v14, 0x106

    move-object/from16 v56, v0

    const-string v0, "MIXED_SET"

    invoke-direct {v1, v0, v2, v14}, Lio/realm/RealmFieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/RealmFieldType;->MIXED_SET:Lio/realm/RealmFieldType;

    move-object/from16 v0, v50

    move-object/from16 v50, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v31

    move-object/from16 v31, v37

    move-object/from16 v37, v43

    move-object/from16 v43, v0

    move-object/from16 v18, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v22

    move-object/from16 v16, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v27, v33

    move-object/from16 v28, v34

    move-object/from16 v29, v35

    move-object/from16 v30, v36

    move-object/from16 v32, v38

    move-object/from16 v33, v39

    move-object/from16 v34, v40

    move-object/from16 v35, v41

    move-object/from16 v36, v42

    move-object/from16 v38, v44

    move-object/from16 v39, v46

    move-object/from16 v40, v47

    move-object/from16 v41, v48

    move-object/from16 v42, v49

    move-object/from16 v44, v51

    move-object/from16 v45, v52

    move-object/from16 v46, v53

    move-object/from16 v47, v54

    move-object/from16 v48, v55

    move-object/from16 v49, v56

    const/16 v0, 0x80

    filled-new-array/range {v1 .. v50}, [Lio/realm/RealmFieldType;

    move-result-object v1

    sput-object v1, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    const/16 v1, 0x12

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sput-object v2, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sput-object v2, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    new-array v2, v1, [Lio/realm/RealmFieldType;

    sput-object v2, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sput-object v1, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    invoke-static {}, Lio/realm/RealmFieldType;->values()[Lio/realm/RealmFieldType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget v5, v4, Lio/realm/RealmFieldType;->nativeValue:I

    if-ge v5, v0, :cond_0

    sget-object v6, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    aput-object v4, v6, v5

    const/16 v6, 0x100

    :goto_1
    const/16 v7, 0x200

    goto :goto_2

    :cond_0
    const/16 v6, 0x100

    if-ge v5, v6, :cond_1

    sget-object v7, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    add-int/lit8 v5, v5, -0x80

    aput-object v4, v7, v5

    goto :goto_1

    :cond_1
    const/16 v7, 0x200

    if-ge v5, v7, :cond_2

    sget-object v8, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v5, v5, -0x100

    aput-object v4, v8, v5

    goto :goto_2

    :cond_2
    sget-object v8, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    add-int/lit16 v5, v5, -0x200

    aput-object v4, v8, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return-void
.end method

.method public static fromNativeValue(I)Lio/realm/RealmFieldType;
    .locals 4

    if-ltz p0, :cond_0

    sget-object v0, Lio/realm/RealmFieldType;->basicTypes:[Lio/realm/RealmFieldType;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x80

    const/16 v1, 0x100

    if-gt v0, p0, :cond_1

    if-ge p0, v1, :cond_1

    add-int/lit8 v0, p0, -0x80

    sget-object v2, Lio/realm/RealmFieldType;->listTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v0, v2, v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/16 v0, 0x200

    if-gt v1, p0, :cond_2

    if-ge p0, v0, :cond_2

    add-int/lit16 v1, p0, -0x100

    sget-object v2, Lio/realm/RealmFieldType;->setTypes:[Lio/realm/RealmFieldType;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v1, v2, v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-gt v0, p0, :cond_3

    add-int/lit16 v0, p0, -0x200

    sget-object v1, Lio/realm/RealmFieldType;->mapTypes:[Lio/realm/RealmFieldType;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v0, v1, v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid native Realm type: "

    invoke-static {p0, v1}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/RealmFieldType;
    .locals 1

    const-class v0, Lio/realm/RealmFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/RealmFieldType;

    return-object p0
.end method

.method public static values()[Lio/realm/RealmFieldType;
    .locals 1

    sget-object v0, Lio/realm/RealmFieldType;->$VALUES:[Lio/realm/RealmFieldType;

    invoke-virtual {v0}, [Lio/realm/RealmFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/RealmFieldType;

    return-object v0
.end method


# virtual methods
.method public getNativeValue()I
    .locals 1

    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lio/realm/RealmFieldType;->nativeValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Realm type:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    instance-of p1, p1, Lorg/bson/types/ObjectId;

    return p1

    :pswitch_1
    instance-of p1, p1, Lorg/bson/types/Decimal128;

    return p1

    :pswitch_2
    instance-of p1, p1, Ljava/lang/Double;

    return p1

    :pswitch_3
    instance-of p1, p1, Ljava/lang/Float;

    return p1

    :pswitch_4
    instance-of p1, p1, Ljava/util/Date;

    return p1

    :pswitch_5
    :sswitch_0
    return v2

    :sswitch_1
    instance-of p1, p1, Ljava/util/UUID;

    return p1

    :cond_0
    :sswitch_2
    instance-of p1, p1, Lio/realm/A;

    return p1

    :cond_1
    instance-of v0, p1, [B

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    instance-of p1, p1, Ljava/lang/String;

    return p1

    :cond_5
    instance-of p1, p1, Ljava/lang/Boolean;

    return p1

    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of p1, p1, Ljava/lang/Byte;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x84 -> :sswitch_0
        0x86 -> :sswitch_0
        0x8f -> :sswitch_0
        0x91 -> :sswitch_0
        0x104 -> :sswitch_0
        0x106 -> :sswitch_0
        0x10f -> :sswitch_0
        0x111 -> :sswitch_0
        0x204 -> :sswitch_0
        0x206 -> :sswitch_0
        0x20f -> :sswitch_0
        0x211 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x88
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x108
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x200
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x208
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
