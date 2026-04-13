.class public final synthetic Lorg/apache/hc/core5/reactor/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/hc/core5/io/ModalCloseable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/io/ModalCloseable;I)V
    .locals 0

    iput p2, p0, Lorg/apache/hc/core5/reactor/b;->a:I

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/b;->b:Lorg/apache/hc/core5/io/ModalCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/reactor/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/b;->b:Lorg/apache/hc/core5/io/ModalCloseable;

    check-cast v0, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;

    check-cast p1, Lorg/apache/hc/core5/reactor/ChannelEntry;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;->a(Lorg/apache/hc/core5/reactor/DefaultListeningIOReactor;Lorg/apache/hc/core5/reactor/ChannelEntry;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/b;->b:Lorg/apache/hc/core5/io/ModalCloseable;

    check-cast v0, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    check-cast p1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->onTLSSessionEnd(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/b;->b:Lorg/apache/hc/core5/io/ModalCloseable;

    check-cast v0, Lorg/apache/hc/core5/reactor/InternalDataChannel;

    check-cast p1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/reactor/InternalDataChannel;->onTLSSessionStart(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
