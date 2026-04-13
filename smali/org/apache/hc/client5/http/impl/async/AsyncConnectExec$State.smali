.class Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field volatile challenged:Z

.field final tracker:Lorg/apache/hc/client5/http/RouteTracker;

.field volatile tunnelRefused:Z


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/HttpRoute;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/RouteTracker;

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/RouteTracker;-><init>(Lorg/apache/hc/client5/http/HttpRoute;)V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/async/AsyncConnectExec$State;->tracker:Lorg/apache/hc/client5/http/RouteTracker;

    return-void
.end method
