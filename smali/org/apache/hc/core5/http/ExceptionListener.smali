.class public interface abstract Lorg/apache/hc/core5/http/ExceptionListener;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final NO_OP:Lorg/apache/hc/core5/http/ExceptionListener;

.field public static final STD_ERR:Lorg/apache/hc/core5/http/ExceptionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/ExceptionListener$1;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ExceptionListener$1;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/ExceptionListener;->NO_OP:Lorg/apache/hc/core5/http/ExceptionListener;

    new-instance v0, Lorg/apache/hc/core5/http/ExceptionListener$2;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/ExceptionListener$2;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/ExceptionListener;->STD_ERR:Lorg/apache/hc/core5/http/ExceptionListener;

    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onError(Lorg/apache/hc/core5/http/HttpConnection;Ljava/lang/Exception;)V
.end method
