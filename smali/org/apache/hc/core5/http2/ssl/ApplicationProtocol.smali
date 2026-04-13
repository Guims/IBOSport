.class public final enum Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

.field public static final enum HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

.field public static final enum HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    const/4 v1, 0x0

    const-string v2, "h2"

    const-string v3, "HTTP_2"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    new-instance v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    const/4 v2, 0x1

    const-string v3, "http/1.1"

    const-string v4, "HTTP_1_1"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    filled-new-array {v0, v1}, [Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->$VALUES:[Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->$VALUES:[Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    return-object v0
.end method
