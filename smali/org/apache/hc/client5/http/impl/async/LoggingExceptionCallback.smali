.class Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/function/Callback<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

.field private static final LOG:LO5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->INSTANCE:Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;

    const-string v0, "org.apache.hc.client5.http.impl.async"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->LOG:LO5/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->LOG:LO5/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, LO5/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingExceptionCallback;->execute(Ljava/lang/Exception;)V

    return-void
.end method
