.class public final Lt4/b;
.super Lt4/i;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method public native constructor <init>(Ljava/lang/String;Lib/player/base/k;)V
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lorg/apache/hc/client5/http/config/RequestConfig;->custom()Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    const v1, 0xea60

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setConnectTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-static {v1, v2}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->setResponseTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/client5/http/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig$Builder;->build()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-static {}, Lorg/apache/hc/client5/http/impl/classic/HttpClients;->custom()Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->setDefaultRequestConfig(Lorg/apache/hc/client5/http/config/RequestConfig;)Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/classic/HttpClientBuilder;->build()Lorg/apache/hc/client5/http/impl/classic/CloseableHttpClient;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lt4/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lib/player/app/MyApp;->a(Landroid/content/Context;)Lib/player/app/MyApp;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lt4/b;->k:Ljava/lang/String;

    invoke-static {v6}, Lv4/c;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".m3u"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v5, ""

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    check-cast v2, Lib/player/app/MyApp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/gson/j;

    invoke-direct {v3}, Lcom/google/gson/j;-><init>()V

    const-string v3, "PREF"

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "LastM3uDate"

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "user_id"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v5

    :goto_0
    :try_start_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v3, :cond_1

    :catch_1
    :cond_0
    move-object v2, v5

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-le v6, v8, :cond_4

    invoke-virtual {v2, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, LL2/o;->q:LL2/o;

    if-nez v2, :cond_6

    new-instance v2, LL2/o;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v4, v2, LL2/o;->b:Ljava/lang/Object;

    sput-object v2, LL2/o;->q:LL2/o;

    :cond_6
    sget-object v2, LL2/o;->q:LL2/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "#EXTINF:"

    const-string v6, "#EXTM3U"

    :try_start_4
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_7
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v0, v4

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_11

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move-object v0, v4

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, LL2/o;->y(Ljava/lang/String;)LK1/c;

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, LL2/o;->b:Ljava/lang/Object;

    check-cast v8, LQ4/a;

    if-eqz v8, :cond_c

    iget-object v9, v8, LQ4/a;->d:Ljava/lang/String;

    if-eqz v9, :cond_b

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_b
    iput-object v4, v2, LL2/o;->b:Ljava/lang/Object;

    :cond_c
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v4

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0}, LL2/o;->z(Ljava/lang/String;)LQ4/a;

    move-result-object v0

    iput-object v0, v2, LL2/o;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_e
    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_4

    :cond_10
    iget-object v8, v2, LL2/o;->b:Ljava/lang/Object;

    check-cast v8, LQ4/a;

    if-eqz v8, :cond_7

    const-string v8, "http://0.0.0.0:1234"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v2, LL2/o;->b:Ljava/lang/Object;

    check-cast v8, LQ4/a;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, LQ4/a;->d:Ljava/lang/String;

    goto :goto_4

    :cond_11
    iget-object v0, v2, LL2/o;->b:Ljava/lang/Object;

    check-cast v0, LQ4/a;

    if-eqz v0, :cond_13

    iget-object v3, v0, LQ4/a;->d:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_12
    iput-object v4, v2, LL2/o;->b:Ljava/lang/Object;

    :cond_13
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-object v1
.end method
