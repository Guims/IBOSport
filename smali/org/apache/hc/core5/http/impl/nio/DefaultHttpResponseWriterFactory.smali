.class public Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory<",
        "Lorg/apache/hc/core5/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;


# instance fields
.field private final lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/message/BasicLineFormatter;->INSTANCE:Lorg/apache/hc/core5/http/message/BasicLineFormatter;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    return-void
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriter<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriter;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriterFactory;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseWriter;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

    return-object v0
.end method
