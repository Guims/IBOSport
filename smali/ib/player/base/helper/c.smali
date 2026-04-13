.class public final Lib/player/base/helper/c;
.super Ljava/lang/Object;

# interfaces
.implements Ln0/n;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/i;Lib/player/base/helper/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lib/player/base/helper/c;->a:Z

    iput-object p1, p0, Lib/player/base/helper/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lib/player/base/helper/c;->c:Ljava/lang/Object;

    new-instance p2, LA3/c;

    invoke-direct {p2, p1}, LA3/c;-><init>(Ljava/lang/Object;)V

    iput-object p0, p2, LA3/c;->c:Ljava/lang/Object;

    new-instance v0, Lu2/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    iput-object v0, p2, LA3/c;->a:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget-object v0, p2, LA3/c;->c:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    if-eqz v0, :cond_4

    iget-object v0, p2, LA3/c;->a:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    if-eqz v0, :cond_3

    iget-object v0, p2, LA3/c;->a:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, LA3/c;->c:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/c;

    if-eqz v0, :cond_1

    iget-object v0, p2, LA3/c;->a:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    iget-object v1, p2, LA3/c;->c:Ljava/lang/Object;

    check-cast v1, Lib/player/base/helper/c;

    invoke-virtual {p2}, LA3/c;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, LE1/w;

    invoke-direct {p2, v0, p1, v1}, LE1/w;-><init>(Lu2/j;Landroid/content/Context;Lib/player/base/helper/c;)V

    goto :goto_0

    :cond_0
    new-instance p2, LE1/b;

    invoke-direct {p2, v0, p1, v1}, LE1/b;-><init>(Lu2/j;Landroid/content/Context;Lib/player/base/helper/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, LA3/c;->a:Ljava/lang/Object;

    check-cast v0, Lu2/j;

    invoke-virtual {p2}, LA3/c;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, LE1/w;

    invoke-direct {p2, v0, p1}, LE1/w;-><init>(Lu2/j;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p2, LE1/b;

    invoke-direct {p2, v0, p1}, LE1/b;-><init>(Lu2/j;Landroid/content/Context;)V

    :goto_0
    iput-object p2, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    new-instance p1, Lcom/bumptech/glide/f;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, LE1/b;->f(Lcom/bumptech/glide/f;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pending purchases for one-time products must be supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid listener for purchases updates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid Context."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lib/player/base/helper/c;->b:Ljava/lang/Object;

    iput-object v0, p0, Lib/player/base/helper/c;->c:Ljava/lang/Object;

    new-instance v0, LY1/c;

    invoke-direct {v0, p1}, LY1/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public static j(Ln0/l;I)I
    .locals 4

    iget v0, p0, Ln0/l;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln0/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Ln0/l;->e:Ln0/p;

    invoke-static {p0}, Ln0/o;->a(Ln0/o;)J

    move-result-wide p0

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v2, p0, v0

    xor-long/2addr p0, v2

    long-to-int p0, p0

    add-int/2addr v1, p0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Ln0/l;->e:Ln0/p;

    invoke-virtual {p0}, Ln0/p;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static m(ILjava/io/DataInputStream;)Ln0/l;
    .locals 4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    new-instance v2, Ln0/h;

    invoke-direct {v2}, Ln0/h;-><init>()V

    const-string v3, "exo_len"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ln0/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ln0/p;->c:Ln0/p;

    invoke-virtual {p0, v2}, Ln0/p;->b(Ln0/h;)Ln0/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LD5/g;->h(Ljava/io/DataInputStream;)Ln0/p;

    move-result-object p0

    :goto_0
    new-instance p1, Ln0/l;

    invoke-direct {p1, v0, v1, p0}, Ln0/l;-><init>(ILjava/lang/String;Ln0/p;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 7

    iget-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LY1/c;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, LY1/c;->P()Lk0/a;

    move-result-object v2

    iget-object v3, p0, Lib/player/base/helper/c;->e:Ljava/lang/Object;

    check-cast v3, Ln0/r;

    if-nez v3, :cond_0

    new-instance v3, Ln0/r;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lib/player/base/helper/c;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v2}, Ln0/r;->a(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v2, p0, Lib/player/base/helper/c;->e:Ljava/lang/Object;

    check-cast v2, Ln0/r;

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln0/l;

    iget v6, v5, Ln0/l;->a:I

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v6, v5, Ln0/l;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v6, v5, Ln0/l;->e:Ln0/p;

    invoke-static {v6, v3}, LD5/g;->i(Ln0/p;Ljava/io/DataOutputStream;)V

    invoke-static {v5, v1}, Lib/player/base/helper/c;->j(Ln0/l;I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget-object p1, v0, LY1/c;->r:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget p1, Lk0/C;->a:I

    iput-boolean v2, p0, Lib/player/base/helper/c;->a:Z

    return-void

    :goto_2
    invoke-static {v1}, Lk0/C;->g(Ljava/io/Closeable;)V

    throw p1
.end method

.method public b(Ln0/l;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lib/player/base/helper/c;->a:Z

    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LY1/c;

    iget-object v1, v0, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, LY1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/util/HashMap;)V
    .locals 1

    iget-boolean v0, p0, Lib/player/base/helper/c;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lib/player/base/helper/c;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public e(J)V
    .locals 0

    return-void
.end method

.method public f(Ln0/l;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lib/player/base/helper/c;->a:Z

    return-void
.end method

.method public g(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 12

    iget-boolean v0, p0, Lib/player/base/helper/c;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-object v0, p0, Lib/player/base/helper/c;->b:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    iget-object v2, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v2, LY1/c;

    iget-object v3, v2, LY1/c;->q:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v4, v2, LY1/c;->q:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    iget-object v2, v2, LY1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v7, 0x2

    if-le v3, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v8, v1

    if-eqz v8, :cond_6

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    invoke-static {v6}, Lk0/C;->g(Ljava/io/Closeable;)V

    goto/16 :goto_8

    :cond_5
    const/16 v8, 0x10

    :try_start_2
    new-array v8, v8, [B

    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v8, p0, Lib/player/base/helper/c;->c:Ljava/lang/Object;

    check-cast v8, Ljavax/crypto/spec/SecretKeySpec;

    sget v10, Lk0/C;->a:I

    invoke-virtual {v0, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v8, Ljavax/crypto/CipherInputStream;

    invoke-direct {v8, v5, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v7

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_6

    :catch_0
    move-object v3, v6

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_4
    if-ge v7, v0, :cond_7

    invoke-static {v3, v6}, Lib/player/base/helper/c;->m(ILjava/io/DataInputStream;)Ln0/l;

    move-result-object v9

    iget-object v10, v9, Ln0/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v9, Ln0/l;->a:I

    invoke-virtual {p2, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v9, v3}, Lib/player/base/helper/c;->j(Ln0/l;I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, -0x1

    if-ne v3, v7, :cond_8

    goto :goto_5

    :cond_8
    move v1, v5

    :goto_5
    if-ne v0, v8, :cond_4

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v6}, Lk0/C;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception p1

    :goto_6
    if-eqz v3, :cond_a

    invoke-static {v3}, Lk0/C;->g(Ljava/io/Closeable;)V

    :cond_a
    throw p1

    :catch_3
    :goto_7
    if-eqz v3, :cond_b

    invoke-static {v3}, Lk0/C;->g(Ljava/io/Closeable;)V

    :cond_b
    :goto_8
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LY1/c;

    iget-object v1, v0, LY1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, v0, LY1/c;->r:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public i(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    iget-object v0, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v1, "purchaseState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const-string v0, "acknowledged"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "token"

    const-string v1, "purchaseToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, LE1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LE1/a;-><init>(I)V

    iput-object p1, v0, LE1/a;->q:Ljava/lang/String;

    iget-object p1, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast p1, LE1/b;

    new-instance v1, Lib/player/base/helper/a;

    invoke-direct {v1, p0}, Lib/player/base/helper/a;-><init>(Lib/player/base/helper/c;)V

    invoke-virtual {p1, v0, v1}, LE1/b;->a(LE1/a;Lib/player/base/helper/a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Purchase token must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "BillingManager"

    const-string v0, "Purchase already acknowledged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public k(LE1/f;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lib/player/base/helper/c;->c:Ljava/lang/Object;

    check-cast v0, Lib/player/base/helper/b;

    iget v1, p1, LE1/f;->a:I

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, p2}, Lib/player/base/helper/c;->i(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x7

    if-ne v1, p2, :cond_2

    invoke-virtual {p0}, Lib/player/base/helper/c;->l()V

    return-void

    :cond_2
    const/4 p2, 0x1

    if-ne v1, p2, :cond_3

    const-string p1, "Purchase canceled by user"

    invoke-interface {v0, p1}, Lib/player/base/helper/b;->h(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Purchase failed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LE1/f;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lib/player/base/helper/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 10

    iget-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LE1/b;

    new-instance v1, Lib/player/base/helper/a;

    invoke-direct {v1, p0}, Lib/player/base/helper/a;-><init>(Lib/player/base/helper/c;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LE1/b;->c()Z

    move-result v2

    const/16 v3, 0x9

    if-nez v2, :cond_0

    sget-object v2, LE1/B;->k:LE1/f;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, LE1/b;->u(IILE1/f;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {v1, v2, v0}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    return-void

    :cond_0
    const-string v2, "inapp"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BillingClient"

    const-string v4, "Please provide a valid product type."

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LE1/B;->f:LE1/f;

    const/16 v4, 0x32

    invoke-virtual {v0, v4, v3, v2}, LE1/b;->u(IILE1/f;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {v1, v2, v0}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v4, LE1/o;

    invoke-direct {v4, v0, v1}, LE1/o;-><init>(LE1/b;Lib/player/base/helper/a;)V

    new-instance v7, LE1/k;

    const/4 v2, 0x0

    invoke-direct {v7, v0, v2, v1}, LE1/k;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0}, LE1/b;->s()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v0}, LE1/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    const-wide/16 v5, 0x7530

    invoke-static/range {v4 .. v9}, LE1/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, LE1/b;->h()LE1/f;

    move-result-object v2

    const/16 v4, 0x19

    invoke-virtual {v0, v4, v3, v2}, LE1/b;->u(IILE1/f;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {v1, v2, v0}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 7

    iget-boolean v0, p0, Lib/player/base/helper/c;->a:Z

    const-string v1, "BillingManager"

    if-nez v0, :cond_0

    const-string v0, "Billing service not connected yet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lib/player/base/helper/c;->e:Ljava/lang/Object;

    check-cast v0, LE1/h;

    if-nez v0, :cond_1

    const-string v0, "No product details available yet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, LA/j;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, LA/j;-><init>(I)V

    iput-object v0, v2, LA/j;->q:Ljava/lang/Object;

    invoke-virtual {v0}, LE1/h;->a()LE1/g;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, LE1/h;->a()LE1/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LE1/h;->a()LE1/g;

    move-result-object v0

    iget-object v0, v0, LE1/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, v2, LA/j;->r:Ljava/lang/Object;

    :cond_2
    iget-object v0, v2, LA/j;->q:Ljava/lang/Object;

    check-cast v0, LE1/h;

    if-eqz v0, :cond_c

    iget-object v0, v0, LE1/h;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v2, LA/j;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "offerToken is required for constructing ProductDetailsParams for subscriptions."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    new-instance v0, LE1/c;

    invoke-direct {v0, v2}, LE1/c;-><init>(LA/j;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v3, LE1/y;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v3, LE1/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/c;

    iget-object v0, v0, LE1/c;->a:LE1/h;

    iget-object v0, v0, LE1/h;->b:Lorg/json/JSONObject;

    const-string v6, "packageName"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    iput-boolean v0, v3, LE1/d;->a:Z

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :cond_7
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v4, :cond_9

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide Old SKU purchase information(token/id) or original external transaction id, not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    new-instance v0, Lh3/e;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lh3/e;-><init>(I)V

    iput-object v0, v3, LE1/d;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, LE1/d;->d:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/C;->k(Ljava/util/List;)Lcom/google/android/gms/internal/play_billing/C;

    move-result-object v0

    iput-object v0, v3, LE1/d;->c:Ljava/lang/Object;

    iget-object v0, p0, Lib/player/base/helper/c;->d:Ljava/lang/Object;

    check-cast v0, LE1/b;

    iget-object v2, p0, Lib/player/base/helper/c;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2, v3}, LE1/b;->d(Landroid/app/Activity;LE1/d;)LE1/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launch billing result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, LE1/f;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, LE1/f;->a:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_a

    const-string v0, "Item already owned! Querying existing purchases..."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lib/player/base/helper/c;->l()V

    :cond_a
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Details of the products must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ProductDetails is required for constructing ProductDetailsParams."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
