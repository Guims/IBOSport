.class public final synthetic Lorg/apache/hc/client5/http/impl/async/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/ConnectionReuseStrategy;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/async/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2, p3}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->a(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->a(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
