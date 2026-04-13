.class public final synthetic Lorg/apache/hc/client5/http/ssl/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;


# instance fields
.field public final synthetic b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

.field public final synthetic q:Lorg/apache/hc/core5/net/NamedEndpoint;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/b;->b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/b;->q:Lorg/apache/hc/core5/net/NamedEndpoint;

    return-void
.end method


# virtual methods
.method public final verify(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/b;->b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/b;->q:Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->a(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p1

    return-object p1
.end method
