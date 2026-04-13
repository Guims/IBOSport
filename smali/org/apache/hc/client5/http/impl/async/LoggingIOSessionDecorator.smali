.class final Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Decorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/function/Decorator<",
        "Lorg/apache/hc/core5/reactor/IOSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

.field private static final WIRE_LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;

    const-string v0, "org.apache.hc.client5.http.wire"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->WIRE_LOG:LO5/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decorate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->decorate(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOSession;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Lorg/apache/hc/core5/reactor/IOSession;)Lorg/apache/hc/core5/reactor/IOSession;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->WIRE_LOG:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;

    sget-object v2, Lorg/apache/hc/client5/http/impl/async/LoggingIOSessionDecorator;->WIRE_LOG:LO5/a;

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;-><init>(Lorg/apache/hc/core5/reactor/IOSession;LO5/a;LO5/a;)V

    return-object v1
.end method
