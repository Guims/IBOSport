.class public final Lorg/apache/hc/core5/http/nio/ssl/FixedPortStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ssl/SecurePortStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final securePorts:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Secure ports"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/ssl/FixedPortStrategy;->securePorts:[I

    return-void
.end method


# virtual methods
.method public isSecure(Ljava/net/SocketAddress;)Z
    .locals 5

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/ssl/FixedPortStrategy;->securePorts:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
