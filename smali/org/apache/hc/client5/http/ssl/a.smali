.class public final synthetic Lorg/apache/hc/client5/http/ssl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;


# instance fields
.field public final synthetic b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/a;->b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/a;->q:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/hc/client5/http/ssl/a;->r:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public final initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/a;->q:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/a;->r:Lorg/apache/hc/core5/util/Timeout;

    iget-object v2, p0, Lorg/apache/hc/client5/http/ssl/a;->b:Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

    invoke-static {v2, v0, v1, p1, p2}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->b(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method
