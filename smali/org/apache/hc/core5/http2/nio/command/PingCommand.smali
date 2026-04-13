.class public final Lorg/apache/hc/core5/http2/nio/command/PingCommand;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/Command;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final handler:Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/nio/command/PingCommand;->handler:Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/command/PingCommand;->handler:Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public getHandler()Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/nio/command/PingCommand;->handler:Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    return-object v0
.end method
