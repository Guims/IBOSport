.class public final synthetic Lorg/apache/hc/core5/http2/ssl/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;I)V
    .locals 0

    iput p3, p0, Lorg/apache/hc/core5/http2/ssl/a;->b:I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/ssl/a;->q:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/ssl/a;->r:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http2/ssl/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/ssl/a;->q:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/ssl/a;->r:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->a(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/ssl/a;->q:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/ssl/a;->r:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->a(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
