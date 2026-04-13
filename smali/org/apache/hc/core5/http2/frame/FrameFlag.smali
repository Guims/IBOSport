.class public final enum Lorg/apache/hc/core5/http2/frame/FrameFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/frame/FrameFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/frame/FrameFlag;

.field public static final enum ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

.field public static final enum END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

.field public static final enum END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

.field public static final enum PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

.field public static final enum PRIORITY:Lorg/apache/hc/core5/http2/frame/FrameFlag;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    const-string v1, "END_STREAM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/http2/frame/FrameFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    new-instance v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    const-string v2, "ACK"

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/hc/core5/http2/frame/FrameFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    new-instance v2, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    const-string v3, "END_HEADERS"

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/hc/core5/http2/frame/FrameFlag;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    new-instance v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "PADDED"

    invoke-direct {v3, v7, v4, v6}, Lorg/apache/hc/core5/http2/frame/FrameFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    new-instance v4, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    const-string v6, "PRIORITY"

    const/16 v7, 0x20

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/hc/core5/http2/frame/FrameFlag;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PRIORITY:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/hc/core5/http2/frame/FrameFlag;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->$VALUES:[Lorg/apache/hc/core5/http2/frame/FrameFlag;

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

    iput p3, p0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    return-void
.end method

.method public static varargs of([Lorg/apache/hc/core5/http2/frame/FrameFlag;)I
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget v3, v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/FrameFlag;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/frame/FrameFlag;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/frame/FrameFlag;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->$VALUES:[Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/frame/FrameFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/frame/FrameFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->value:I

    return v0
.end method
