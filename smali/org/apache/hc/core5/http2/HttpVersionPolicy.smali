.class public final enum Lorg/apache/hc/core5/http2/HttpVersionPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/HttpVersionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/HttpVersionPolicy;

.field public static final enum FORCE_HTTP_1:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

.field public static final enum FORCE_HTTP_2:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

.field public static final enum NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    const-string v1, "FORCE_HTTP_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/HttpVersionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_1:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    new-instance v1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    const-string v2, "FORCE_HTTP_2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http2/HttpVersionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_2:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    new-instance v2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    const-string v3, "NEGOTIATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http2/HttpVersionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    filled-new-array {v0, v1, v2}, [Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->$VALUES:[Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/HttpVersionPolicy;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/HttpVersionPolicy;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->$VALUES:[Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/HttpVersionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    return-object v0
.end method
