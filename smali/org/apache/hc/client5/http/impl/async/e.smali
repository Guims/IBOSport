.class public final synthetic Lorg/apache/hc/client5/http/impl/async/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/async/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/async/e;->a:I

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;->a(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;->a(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->c(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->c(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
