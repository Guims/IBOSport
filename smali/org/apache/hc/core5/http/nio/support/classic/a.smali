.class public final synthetic Lorg/apache/hc/core5/http/nio/support/classic/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;

.field public final synthetic q:Lorg/apache/hc/core5/http/HttpRequest;

.field public final synthetic r:Ljava/io/InputStream;

.field public final synthetic s:Lorg/apache/hc/core5/http/HttpResponse;

.field public final synthetic t:Ljava/io/OutputStream;

.field public final synthetic u:Lorg/apache/hc/core5/http/protocol/HttpContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/nio/support/classic/ContentInputStream;Lorg/apache/hc/core5/http/HttpResponse;Ljava/io/OutputStream;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->b:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;

    iput-object p2, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->q:Lorg/apache/hc/core5/http/HttpRequest;

    iput-object p3, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->r:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->s:Lorg/apache/hc/core5/http/HttpResponse;

    iput-object p5, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->t:Ljava/io/OutputStream;

    iput-object p6, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->u:Lorg/apache/hc/core5/http/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->t:Ljava/io/OutputStream;

    iget-object v5, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->u:Lorg/apache/hc/core5/http/protocol/HttpContext;

    iget-object v0, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->b:Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->q:Lorg/apache/hc/core5/http/HttpRequest;

    iget-object v2, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->r:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/hc/core5/http/nio/support/classic/a;->s:Lorg/apache/hc/core5/http/HttpResponse;

    invoke-static/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;->a(Lorg/apache/hc/core5/http/nio/support/classic/AbstractClassicServerExchangeHandler;Lorg/apache/hc/core5/http/HttpRequest;Ljava/io/InputStream;Lorg/apache/hc/core5/http/HttpResponse;Ljava/io/OutputStream;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method
