.class public Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
        "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;


# instance fields
.field private final lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

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
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    return-void
.end method


# virtual methods
.method public create()Lorg/apache/hc/core5/http/io/HttpMessageWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriter<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriter;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;->lineFormatter:Lorg/apache/hc/core5/http/message/LineFormatter;

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriter;-><init>(Lorg/apache/hc/core5/http/message/LineFormatter;)V

    return-object v0
.end method
