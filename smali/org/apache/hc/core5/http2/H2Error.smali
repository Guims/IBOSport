.class public final enum Lorg/apache/hc/core5/http2/H2Error;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/H2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum CANCEL:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum COMPRESSION_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum CONNECT_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum INADEQUATE_SECURITY:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field private static final MAP_BY_CODE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/hc/core5/http2/H2Error;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum REFUSED_STREAM:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum SETTINGS_TIMEOUT:Lorg/apache/hc/core5/http2/H2Error;

.field public static final enum STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/hc/core5/http2/H2Error;

    const-string v1, "NO_ERROR"

    const/4 v14, 0x0

    invoke-direct {v0, v1, v14, v14}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v1, Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v2, Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v3, Lorg/apache/hc/core5/http2/H2Error;

    const-string v4, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/hc/core5/http2/H2Error;->FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v4, Lorg/apache/hc/core5/http2/H2Error;

    const-string v5, "SETTINGS_TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/hc/core5/http2/H2Error;->SETTINGS_TIMEOUT:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v5, Lorg/apache/hc/core5/http2/H2Error;

    const-string v6, "STREAM_CLOSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v6, Lorg/apache/hc/core5/http2/H2Error;

    const-string v7, "FRAME_SIZE_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v7, Lorg/apache/hc/core5/http2/H2Error;

    const-string v8, "REFUSED_STREAM"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/hc/core5/http2/H2Error;->REFUSED_STREAM:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v8, Lorg/apache/hc/core5/http2/H2Error;

    const-string v9, "CANCEL"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/hc/core5/http2/H2Error;->CANCEL:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v9, Lorg/apache/hc/core5/http2/H2Error;

    const-string v10, "COMPRESSION_ERROR"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/hc/core5/http2/H2Error;->COMPRESSION_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v10, Lorg/apache/hc/core5/http2/H2Error;

    const-string v11, "CONNECT_ERROR"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/hc/core5/http2/H2Error;->CONNECT_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v11, Lorg/apache/hc/core5/http2/H2Error;

    const-string v12, "ENHANCE_YOUR_CALM"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/hc/core5/http2/H2Error;->ENHANCE_YOUR_CALM:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v12, Lorg/apache/hc/core5/http2/H2Error;

    const-string v13, "INADEQUATE_SECURITY"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v15, v15}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/hc/core5/http2/H2Error;->INADEQUATE_SECURITY:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v13, Lorg/apache/hc/core5/http2/H2Error;

    const-string v15, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v13, v15, v14, v14}, Lorg/apache/hc/core5/http2/H2Error;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/hc/core5/http2/H2Error;->HTTP_1_1_REQUIRED:Lorg/apache/hc/core5/http2/H2Error;

    filled-new-array/range {v0 .. v13}, [Lorg/apache/hc/core5/http2/H2Error;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/H2Error;->$VALUES:[Lorg/apache/hc/core5/http2/H2Error;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/H2Error;->MAP_BY_CODE:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/hc/core5/http2/H2Error;->values()[Lorg/apache/hc/core5/http2/H2Error;

    move-result-object v0

    array-length v1, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v1, :cond_0

    aget-object v2, v0, v14

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->MAP_BY_CODE:Ljava/util/concurrent/ConcurrentMap;

    iget v4, v2, Lorg/apache/hc/core5/http2/H2Error;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/apache/hc/core5/http2/H2Error;->code:I

    return-void
.end method

.method public static getByCode(I)Lorg/apache/hc/core5/http2/H2Error;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->MAP_BY_CODE:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/H2Error;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/H2Error;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/H2Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/H2Error;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/H2Error;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->$VALUES:[Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/H2Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/H2Error;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/H2Error;->code:I

    return v0
.end method
