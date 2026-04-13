.class public final enum Lorg/apache/hc/core5/http2/config/H2Param;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/config/H2Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum ENABLE_PUSH:Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum HEADER_TABLE_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum INITIAL_WINDOW_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

.field private static final LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum MAX_CONCURRENT_STREAMS:Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum MAX_FRAME_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

.field public static final enum MAX_HEADER_LIST_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v1, "HEADER_TABLE_SIZE"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/hc/core5/http2/config/H2Param;->HEADER_TABLE_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    new-instance v1, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v2, "ENABLE_PUSH"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v7, v3}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/hc/core5/http2/config/H2Param;->ENABLE_PUSH:Lorg/apache/hc/core5/http2/config/H2Param;

    new-instance v2, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v4, "MAX_CONCURRENT_STREAMS"

    const/4 v5, 0x3

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_CONCURRENT_STREAMS:Lorg/apache/hc/core5/http2/config/H2Param;

    new-instance v3, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v4, "INITIAL_WINDOW_SIZE"

    const/4 v8, 0x4

    invoke-direct {v3, v4, v5, v8}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/hc/core5/http2/config/H2Param;->INITIAL_WINDOW_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    new-instance v4, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v5, "MAX_FRAME_SIZE"

    const/4 v9, 0x5

    invoke-direct {v4, v5, v8, v9}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_FRAME_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    new-instance v5, Lorg/apache/hc/core5/http2/config/H2Param;

    const-string v8, "MAX_HEADER_LIST_SIZE"

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10}, Lorg/apache/hc/core5/http2/config/H2Param;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_HEADER_LIST_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/hc/core5/http2/config/H2Param;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/config/H2Param;->$VALUES:[Lorg/apache/hc/core5/http2/config/H2Param;

    new-array v0, v10, [Lorg/apache/hc/core5/http2/config/H2Param;

    sput-object v0, Lorg/apache/hc/core5/http2/config/H2Param;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/config/H2Param;

    invoke-static {}, Lorg/apache/hc/core5/http2/config/H2Param;->values()[Lorg/apache/hc/core5/http2/config/H2Param;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v2, v0, v6

    sget-object v3, Lorg/apache/hc/core5/http2/config/H2Param;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/config/H2Param;

    iget v4, v2, Lorg/apache/hc/core5/http2/config/H2Param;->code:I

    sub-int/2addr v4, v7

    aput-object v2, v3, v4

    add-int/lit8 v6, v6, 0x1

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

    iput p3, p0, Lorg/apache/hc/core5/http2/config/H2Param;->code:I

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v1, Lorg/apache/hc/core5/http2/config/H2Param;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/config/H2Param;

    array-length v2, v1

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(I)Lorg/apache/hc/core5/http2/config/H2Param;
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    sget-object v1, Lorg/apache/hc/core5/http2/config/H2Param;->LOOKUP_TABLE:[Lorg/apache/hc/core5/http2/config/H2Param;

    array-length v2, v1

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/config/H2Param;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/config/H2Param;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/config/H2Param;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/config/H2Param;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/config/H2Param;->$VALUES:[Lorg/apache/hc/core5/http2/config/H2Param;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/config/H2Param;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/config/H2Param;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Param;->code:I

    return v0
.end method
