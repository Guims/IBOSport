.class public final Lo0/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# instance fields
.field public final a:Lorg/chromium/net/CronetEngine;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public final d:I

.field public e:I

.field public f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/c;->a:Lorg/chromium/net/CronetEngine;

    iput-object p2, p0, Lo0/c;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lo0/c;->c:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    const/4 p1, 0x3

    iput p1, p0, Lo0/c;->d:I

    const/16 p1, 0x1f40

    iput p1, p0, Lo0/c;->e:I

    iput p1, p0, Lo0/c;->f:I

    const p1, 0x8000

    iput p1, p0, Lo0/c;->g:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    invoke-virtual {p0}, Lo0/c;->createDataSource()Landroidx/media3/datasource/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Landroidx/media3/datasource/HttpDataSource;
    .locals 8

    new-instance v0, Lo0/f;

    iget v4, p0, Lo0/c;->e:I

    iget v5, p0, Lo0/c;->f:I

    iget-object v6, p0, Lo0/c;->c:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    iget v7, p0, Lo0/c;->g:I

    iget-object v1, p0, Lo0/c;->a:Lorg/chromium/net/CronetEngine;

    iget-object v2, p0, Lo0/c;->b:Ljava/util/concurrent/Executor;

    iget v3, p0, Lo0/c;->d:I

    invoke-direct/range {v0 .. v7}, Lo0/f;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIILandroidx/media3/datasource/HttpDataSource$RequestProperties;I)V

    return-object v0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$Factory;
    .locals 1

    iget-object v0, p0, Lo0/c;->c:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method
