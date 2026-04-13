.class public final synthetic Lorg/apache/hc/core5/http/nio/command/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# instance fields
.field public final synthetic a:Lorg/apache/hc/core5/reactor/Command$Priority;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/reactor/Command$Priority;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/command/a;->a:Lorg/apache/hc/core5/reactor/Command$Priority;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/command/a;->a:Lorg/apache/hc/core5/reactor/Command$Priority;

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->a(Lorg/apache/hc/core5/reactor/Command$Priority;Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method
