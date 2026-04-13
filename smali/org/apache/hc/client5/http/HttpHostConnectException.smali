.class public Lorg/apache/hc/client5/http/HttpHostConnectException;
.super Ljava/net/ConnectException;


# static fields
.field private static final serialVersionUID:J = -0x2c5515199314e300L


# instance fields
.field private final namedEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/client5/http/HttpHostConnectException;->namedEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/hc/client5/http/HttpHostConnectException;->namedEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    return-void
.end method


# virtual methods
.method public getHost()Lorg/apache/hc/core5/net/NamedEndpoint;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/HttpHostConnectException;->namedEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    return-object v0
.end method
