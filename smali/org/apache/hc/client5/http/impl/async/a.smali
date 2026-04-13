.class public final synthetic Lorg/apache/hc/client5/http/impl/async/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/a;->b:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/a;->b:Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/DefaultConnectingIOReactor;->start()V

    return-void
.end method
