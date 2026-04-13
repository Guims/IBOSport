.class public final Lo0/f;
.super Landroidx/media3/datasource/BaseDataSource;

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource;


# instance fields
.field public A:J

.field public B:Lorg/chromium/net/UrlRequest;

.field public C:Lo0/e;

.field public D:Landroidx/media3/datasource/DataSpec;

.field public E:Ljava/nio/ByteBuffer;

.field public F:Lorg/chromium/net/UrlResponseInfo;

.field public G:Ljava/io/IOException;

.field public H:Z

.field public volatile I:J

.field public final b:Lorg/chromium/net/CronetEngine;

.field public final q:Ljava/util/concurrent/Executor;

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public final v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

.field public final w:Lk0/g;

.field public final x:Lk0/w;

.field public final y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource.cronet"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;IIILandroidx/media3/datasource/HttpDataSource$RequestProperties;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    iput-object p1, p0, Lo0/f;->b:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lo0/f;->q:Ljava/util/concurrent/Executor;

    iput p3, p0, Lo0/f;->r:I

    iput p4, p0, Lo0/f;->s:I

    iput p5, p0, Lo0/f;->t:I

    iput-object p6, p0, Lo0/f;->u:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    sget-object p1, Lk0/d;->a:Lk0/w;

    iput-object p1, p0, Lo0/f;->x:Lk0/w;

    iput p7, p0, Lo0/f;->y:I

    new-instance p1, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Lo0/f;->v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    new-instance p1, Lk0/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/f;->w:Lk0/g;

    return-void
.end method

.method public static getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media3/datasource/DataSpec;)V
    .locals 6

    new-instance v0, Lo0/e;

    invoke-direct {v0, p0}, Lo0/e;-><init>(Lo0/f;)V

    iput-object v0, p0, Lo0/f;->C:Lo0/e;

    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo0/f;->C:Lo0/e;

    iget-object v2, p0, Lo0/f;->b:Lorg/chromium/net/CronetEngine;

    iget-object v3, p0, Lo0/f;->q:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0, v1, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    iget v1, p0, Lo0/f;->r:I

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setPriority(I)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lo0/f;->u:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v2, p0, Lo0/f;->v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, p1, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    if-eqz v2, :cond_3

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lo0/d;

    const/16 v1, 0x3ec

    const/4 v2, 0x1

    const-string v3, "HTTP request with non-empty body must set Content-Type"

    invoke-direct {v0, v3, p1, v1, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    throw v0

    :cond_3
    :goto_1
    iget-wide v1, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v1, v2, v4, v5}, Landroidx/media3/datasource/HttpUtil;->buildRangeRequestHeader(JJ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    if-eqz p1, :cond_5

    new-instance v1, Lo0/a;

    invoke-direct {v1, p1}, Lo0/a;-><init>([B)V

    invoke-virtual {v0, v1, v3}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    :cond_5
    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    iput-object p1, p0, Lo0/f;->B:Lorg/chromium/net/UrlRequest;

    return-void
.end method

.method public final clearAllRequestProperties()V
    .locals 1

    iget-object v0, p0, Lo0/f;->v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public final clearRequestProperty(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo0/f;->v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo0/f;->B:Lorg/chromium/net/UrlRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    iput-object v1, p0, Lo0/f;->B:Lorg/chromium/net/UrlRequest;

    :cond_0
    iget-object v0, p0, Lo0/f;->C:Lo0/e;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lo0/e;->a:Z

    iput-object v1, p0, Lo0/f;->C:Lo0/e;

    :cond_1
    iget-object v0, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iput-object v1, p0, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    iput-object v1, p0, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    iput-object v1, p0, Lo0/f;->G:Ljava/io/IOException;

    iput-boolean v2, p0, Lo0/f;->H:Z

    iget-boolean v0, p0, Lo0/f;->z:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lo0/f;->z:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getOrCreateReadBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lo0/f;->y:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget-object v0, p0, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Lo0/f;->z:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, v1, Lo0/f;->w:Lk0/g;

    invoke-virtual {v0}, Lk0/g;->d()V

    iget-object v0, v1, Lo0/f;->x:Lk0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v0, v1, Lo0/f;->s:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, v1, Lo0/f;->I:J

    iput-object v7, v1, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lo0/f;->a(Landroidx/media3/datasource/DataSpec;)V

    iget-object v0, v1, Lo0/f;->B:Lorg/chromium/net/UrlRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    :try_start_1
    iget-object v3, v1, Lo0/f;->x:Lk0/w;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_0

    iget-wide v8, v1, Lo0/f;->I:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_0

    iget-object v6, v1, Lo0/f;->w:Lk0/g;

    iget-wide v8, v1, Lo0/f;->I:J

    sub-long/2addr v8, v3

    const-wide/16 v3, 0x5

    add-long/2addr v8, v3

    invoke-virtual {v6, v8, v9}, Lk0/g;->b(J)Z

    move-result v6

    iget-object v3, v1, Lo0/f;->x:Lk0/w;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lo0/f;->G:Ljava/io/IOException;

    const/16 v4, 0x7d1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, LE5/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "err_cleartext_not_permitted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v0, v3, v7}, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;)V

    throw v0

    :cond_1
    new-instance v5, Lo0/d;

    new-instance v6, Lk0/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-array v8, v2, [I

    new-instance v9, Lo0/b;

    invoke-direct {v9, v8, v6}, Lo0/b;-><init>([ILk0/g;)V

    invoke-virtual {v0, v9}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    invoke-virtual {v6}, Lk0/g;->a()V

    invoke-direct {v5, v3, v7, v4, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    const/16 v3, 0x7d2

    if-eqz v6, :cond_14

    iget-object v0, v1, Lo0/f;->F:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v3

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v3

    move v8, v6

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v6

    const/16 v9, 0x7d8

    const-string v10, "Content-Range"

    const/16 v11, 0xc8

    const-wide/16 v14, 0x0

    if-lt v3, v11, :cond_3

    const/16 v4, 0x12b

    if-le v3, v4, :cond_4

    :cond_3
    const-wide/16 v17, -0x1

    goto/16 :goto_9

    :cond_4
    if-ne v3, v11, :cond_5

    iget-wide v3, v7, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v11, v3, v14

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    move-wide v3, v14

    :goto_1
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    const-wide/16 v17, -0x1

    const-string v12, "Content-Encoding"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "identity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    goto :goto_2

    :cond_7
    const-wide/16 v17, -0x1

    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_a

    iget-wide v11, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v11, v17

    if-eqz v0, :cond_8

    iput-wide v11, v1, Lo0/f;->A:J

    goto :goto_4

    :cond_8
    const-string v0, "Content-Length"

    invoke-static {v6, v0}, Lo0/f;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v10}, Lo0/f;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/media3/datasource/HttpUtil;->getContentLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v17

    if-eqz v0, :cond_9

    sub-long v12, v5, v3

    goto :goto_3

    :cond_9
    move-wide/from16 v12, v17

    :goto_3
    iput-wide v12, v1, Lo0/f;->A:J

    goto :goto_4

    :cond_a
    iget-wide v5, v7, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v5, v1, Lo0/f;->A:J

    :goto_4
    iput-boolean v2, v1, Lo0/f;->z:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    cmp-long v0, v3, v14

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v1}, Lo0/f;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_5
    cmp-long v5, v3, v14

    if-lez v5, :cond_10

    :try_start_2
    iget-object v5, v1, Lo0/f;->w:Lk0/g;

    invoke-virtual {v5}, Lk0/g;->d()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v0, v7}, Lo0/f;->readInternal(Ljava/nio/ByteBuffer;Landroidx/media3/datasource/DataSpec;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, v1, Lo0/f;->H:Z

    if-nez v5, :cond_c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    invoke-static {v5}, Lk0/c;->j(Z)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_c
    new-instance v0, Lo0/d;

    invoke-direct {v0, v7, v9, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    instance-of v3, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v3, :cond_f

    new-instance v3, Lo0/d;

    instance-of v4, v0, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_e

    move v4, v8

    goto :goto_7

    :cond_e
    const/16 v4, 0x7d1

    :goto_7
    invoke-direct {v3, v0, v7, v4, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3

    :cond_f
    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_10
    :goto_8
    iget-wide v2, v1, Lo0/f;->A:J

    return-wide v2

    :goto_9
    const/16 v4, 0x1a0

    if-ne v3, v4, :cond_12

    invoke-static {v6, v10}, Lo0/f;->getFirstHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/datasource/HttpUtil;->getDocumentSize(Ljava/lang/String;)J

    move-result-wide v10

    iget-wide v12, v7, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v5, v12, v10

    if-nez v5, :cond_12

    iput-boolean v2, v1, Lo0/f;->z:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    iget-wide v2, v7, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v2, v17

    if-eqz v0, :cond_11

    return-wide v2

    :cond_11
    return-wide v14

    :cond_12
    :try_start_3
    invoke-virtual {v1}, Lo0/f;->readResponseBody()[B

    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_a
    move-object v8, v2

    goto :goto_b

    :catch_1
    sget-object v2, Lk0/C;->f:[B

    goto :goto_a

    :goto_b
    if-ne v3, v4, :cond_13

    new-instance v2, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {v2, v9}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    :goto_c
    move-object v5, v2

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    goto :goto_c

    :goto_d
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Landroidx/media3/datasource/DataSpec;[B)V

    throw v2

    :cond_14
    move v8, v3

    :try_start_4
    new-instance v3, Lo0/d;

    new-instance v4, Ljava/net/SocketTimeoutException;

    invoke-direct {v4}, Ljava/net/SocketTimeoutException;-><init>()V

    new-instance v5, Lk0/g;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-array v6, v2, [I

    new-instance v9, Lo0/b;

    invoke-direct {v9, v6, v5}, Lo0/b;-><init>([ILk0/g;)V

    invoke-virtual {v0, v9}, Lorg/chromium/net/UrlRequest;->getStatus(Lorg/chromium/net/UrlRequest$StatusListener;)V

    invoke-virtual {v5}, Lk0/g;->a()V

    invoke-direct {v3, v4, v7, v8, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lo0/d;

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v4, 0x3ec

    invoke-direct {v0, v3, v7, v4, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v0

    :catch_3
    move-exception v0

    instance-of v3, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v3, :cond_15

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_15
    new-instance v3, Lo0/d;

    const/16 v4, 0x7d0

    invoke-direct {v3, v0, v7, v4, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    throw v3
.end method

.method public final read([BII)I
    .locals 10

    iget-boolean v0, p0, Lo0/f;->z:Z

    invoke-static {v0}, Lk0/c;->j(Z)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lo0/f;->A:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lo0/f;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lo0/f;->w:Lk0/g;

    invoke-virtual {v5}, Lk0/g;->d()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    sget v6, Lk0/C;->a:I

    invoke-virtual {p0, v1, v5}, Lo0/f;->readInternal(Ljava/nio/ByteBuffer;Landroidx/media3/datasource/DataSpec;)V

    iget-boolean v5, p0, Lo0/f;->H:Z

    if-eqz v5, :cond_2

    iput-wide v3, p0, Lo0/f;->A:J

    return v2

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    invoke-static {v2}, Lk0/c;->j(Z)V

    :cond_3
    iget-wide v2, p0, Lo0/f;->A:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    int-to-long v8, p3

    const/4 p3, 0x3

    new-array p3, p3, [J

    aput-wide v2, p3, v0

    const/4 v0, 0x1

    aput-wide v6, p3, v0

    const/4 v0, 0x2

    aput-wide v8, p3, v0

    invoke-static {p3}, Landroid/support/v4/media/session/b;->q([J)J

    move-result-wide v2

    long-to-int p3, v2

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lo0/f;->A:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_5

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lo0/f;->A:J

    :cond_5
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p3
.end method

.method public final readInternal(Ljava/nio/ByteBuffer;Landroidx/media3/datasource/DataSpec;)V
    .locals 5

    iget-object v0, p0, Lo0/f;->B:Lorg/chromium/net/UrlRequest;

    sget v1, Lk0/C;->a:I

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lo0/f;->w:Lk0/g;

    iget v3, p0, Lo0/f;->t:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lk0/g;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    if-ne p1, v3, :cond_1

    iput-object v1, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    :cond_1
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 v1, 0x7d2

    invoke-direct {p1, v2, p2, v1, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    iput-object p1, p0, Lo0/f;->G:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    iget-object v2, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    if-ne p1, v2, :cond_2

    iput-object v1, p0, Lo0/f;->E:Ljava/nio/ByteBuffer;

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    iput-object p1, p0, Lo0/f;->G:Ljava/io/IOException;

    :goto_0
    iget-object p1, p0, Lo0/f;->G:Ljava/io/IOException;

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw p1

    :cond_3
    invoke-static {p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1

    :cond_4
    return-void
.end method

.method public final readResponseBody()[B
    .locals 5

    sget-object v0, Lk0/C;->f:[B

    invoke-virtual {p0}, Lo0/f;->getOrCreateReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lo0/f;->H:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lo0/f;->w:Lk0/g;

    invoke-virtual {v2}, Lk0/g;->d()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lo0/f;->D:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {p0, v1, v2}, Lo0/f;->readInternal(Ljava/nio/ByteBuffer;Landroidx/media3/datasource/DataSpec;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    array-length v2, v0

    array-length v3, v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo0/f;->v:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
