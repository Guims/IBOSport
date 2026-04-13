.class public final LG3/l;
.super Ljava/lang/Object;

# interfaces
.implements LG3/c;


# static fields
.field public static final r:Ljava/nio/charset/Charset;


# instance fields
.field public final b:Ljava/io/File;

.field public q:LG3/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, LG3/l;->r:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG3/l;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LG3/l;->q:LG3/k;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, LG3/l;->q:LG3/k;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, LG3/l;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    iget-object v1, p0, LG3/l;->q:LG3/k;

    const-string v4, "FirebaseCrashlytics"

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, LG3/k;

    invoke-direct {v1, v0}, LG3/k;-><init>(Ljava/io/File;)V

    iput-object v1, p0, LG3/l;->q:LG3/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not open log file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget-object v0, p0, LG3/l;->q:LG3/k;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    filled-new-array {v2}, [I

    move-result-object v1

    iget v5, v0, LG3/k;->r:I

    const/16 v6, 0x10

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v0, LG3/k;->t:LG3/h;

    iget v7, v5, LG3/h;->a:I

    iget v5, v5, LG3/h;->b:I

    iget-object v8, v0, LG3/k;->s:LG3/h;

    iget v8, v8, LG3/h;->a:I

    if-lt v7, v8, :cond_4

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v5

    add-int/2addr v6, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v5

    iget v5, v0, LG3/k;->q:I

    add-int/2addr v7, v5

    sub-int v6, v7, v8

    :goto_2
    new-array v5, v6, [B

    :try_start_1
    new-instance v6, LG3/e;

    invoke-direct {v6, v1, v5}, LG3/e;-><init>([I[B)V

    invoke-virtual {v0, v6}, LG3/k;->a(LG3/j;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v6, "A problem occurred while reading the Crashlytics log file."

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    new-instance v0, LE1/t;

    aget v1, v1, v2

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v5}, LE1/t;-><init>(IILjava/lang/Object;)V

    :goto_4
    if-nez v0, :cond_5

    move-object v4, v3

    goto :goto_5

    :cond_5
    iget v1, v0, LE1/t;->q:I

    new-array v4, v1, [B

    iget-object v0, v0, LE1/t;->r:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    if-eqz v4, :cond_6

    new-instance v0, Ljava/lang/String;

    sget-object v1, LG3/l;->r:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_6
    return-object v3
.end method
