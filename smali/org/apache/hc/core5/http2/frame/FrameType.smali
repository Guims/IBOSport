.class public final enum Lorg/apache/hc/core5/http2/frame/FrameType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/frame/FrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum CONTINUATION:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum DATA:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum GOAWAY:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum HEADERS:Lorg/apache/hc/core5/http2/frame/FrameType;

.field private static final LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum PING:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum PRIORITY:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum PUSH_PROMISE:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum RST_STREAM:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum SETTINGS:Lorg/apache/hc/core5/http2/frame/FrameType;

.field public static final enum WINDOW_UPDATE:Lorg/apache/hc/core5/http2/frame/FrameType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v1, "DATA"

    const/4 v10, 0x0

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->DATA:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v1, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v2, "HEADERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->HEADERS:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v2, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v3, "PRIORITY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/hc/core5/http2/frame/FrameType;->PRIORITY:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v3, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v4, "RST_STREAM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/hc/core5/http2/frame/FrameType;->RST_STREAM:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v4, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v5, "SETTINGS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/hc/core5/http2/frame/FrameType;->SETTINGS:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v5, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v6, "PUSH_PROMISE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/hc/core5/http2/frame/FrameType;->PUSH_PROMISE:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v6, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v7, "PING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/hc/core5/http2/frame/FrameType;->PING:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v7, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v8, "GOAWAY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/hc/core5/http2/frame/FrameType;->GOAWAY:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v8, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v9, "WINDOW_UPDATE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v11}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/hc/core5/http2/frame/FrameType;->WINDOW_UPDATE:Lorg/apache/hc/core5/http2/frame/FrameType;

    new-instance v9, Lorg/apache/hc/core5/http2/frame/FrameType;

    const-string v11, "CONTINUATION"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v12}, Lorg/apache/hc/core5/http2/frame/FrameType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/hc/core5/http2/frame/FrameType;->CONTINUATION:Lorg/apache/hc/core5/http2/frame/FrameType;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/hc/core5/http2/frame/FrameType;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->$VALUES:[Lorg/apache/hc/core5/http2/frame/FrameType;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/hc/core5/http2/frame/FrameType;

    sput-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-static {}, Lorg/apache/hc/core5/http2/frame/FrameType;->values()[Lorg/apache/hc/core5/http2/frame/FrameType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v2, v0, v10

    sget-object v3, Lorg/apache/hc/core5/http2/frame/FrameType;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/frame/FrameType;

    iget v4, v2, Lorg/apache/hc/core5/http2/frame/FrameType;->value:I

    aput-object v2, v3, v4

    add-int/lit8 v10, v10, 0x1

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

    iput p3, p0, Lorg/apache/hc/core5/http2/frame/FrameType;->value:I

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/frame/FrameType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lorg/apache/hc/core5/http2/frame/FrameType;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/frame/FrameType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/FrameType;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/frame/FrameType;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/frame/FrameType;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameType;->$VALUES:[Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/frame/FrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/frame/FrameType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/FrameType;->value:I

    return v0
.end method
