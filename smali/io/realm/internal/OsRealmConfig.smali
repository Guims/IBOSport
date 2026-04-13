.class public Lio/realm/internal/OsRealmConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/h;


# static fields
.field public static final v:J


# instance fields
.field public final b:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;

.field public final r:Lio/realm/J;

.field public final s:Ljava/net/URI;

.field public final t:J

.field public final u:Lio/realm/internal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/realm/internal/OsRealmConfig;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsRealmConfig;->v:J

    return-void
.end method

.method public constructor <init>(Lio/realm/J;Ljava/lang/String;ZLio/realm/internal/OsSchemaInfo;Lio/realm/b;)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    const-string v10, "Cannot create a URI from the Realm URL address"

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lio/realm/internal/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lio/realm/internal/OsRealmConfig;->u:Lio/realm/internal/g;

    iput-object v0, v1, Lio/realm/internal/OsRealmConfig;->r:Lio/realm/J;

    iget-object v3, v0, Lio/realm/J;->c:Ljava/lang/String;

    iget-wide v4, v0, Lio/realm/J;->i:J

    const/4 v11, 0x1

    move-object/from16 v6, p2

    invoke-static {v3, v6, v11, v4, v5}, Lio/realm/internal/OsRealmConfig;->nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide v3

    iput-wide v3, v1, Lio/realm/internal/OsRealmConfig;->t:J

    sget-object v3, Lio/realm/internal/g;->b:Lio/realm/internal/g;

    invoke-virtual {v3, v1}, Lio/realm/internal/g;->a(Lio/realm/internal/h;)V

    sget-object v3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    :goto_0
    const/16 v3, 0x13

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v4, v3, v12

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    aget-object v4, v3, v11

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v5, v3, v4

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v8, v3, v7

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v9, v3, v8

    move-object/from16 v17, v9

    check-cast v17, Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v18, v3, v9

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x7

    aget-object v20, v3, v19

    check-cast v20, Ljava/lang/Byte;

    const/16 v21, 0x8

    aget-object v21, v3, v21

    check-cast v21, Ljava/lang/String;

    const/16 v22, 0x9

    aget-object v22, v3, v22

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0xa

    aget-object v23, v3, v23

    check-cast v23, Ljava/util/Map;

    const/16 v24, 0xb

    aget-object v24, v3, v24

    check-cast v24, Ljava/lang/Byte;

    const/16 v25, 0xc

    aget-object v5, v3, v25

    iput-object v5, v1, Lio/realm/internal/OsRealmConfig;->b:Ljava/lang/Object;

    const/16 v5, 0xd

    aget-object v5, v3, v5

    iput-object v5, v1, Lio/realm/internal/OsRealmConfig;->q:Ljava/lang/Object;

    const/16 v5, 0xe

    aget-object v5, v3, v5

    move-object/from16 v25, v5

    check-cast v25, Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v26, v3, v5

    const/16 v5, 0x10

    aget-object v5, v3, v5

    move-object/from16 v27, v5

    check-cast v27, Ljava/lang/Long;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v28, 0x11

    aget-object v7, v3, v28

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x12

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/String;

    if-eqz v23, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->size()I

    move-result v7

    mul-int/2addr v7, v4

    goto :goto_1

    :cond_1
    move v7, v12

    :goto_1
    new-array v7, v7, [Ljava/lang/String;

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move/from16 v28, v12

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    aput-object v30, v7, v28

    add-int/lit8 v30, v28, 0x1

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    aput-object v29, v7, v30

    add-int/lit8 v28, v28, 0x2

    goto :goto_2

    :cond_2
    iget-wide v8, v1, Lio/realm/internal/OsRealmConfig;->t:J

    iget v11, v0, Lio/realm/J;->f:I

    if-ne v11, v4, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v12

    :goto_3
    invoke-static {v8, v9, v11}, Lio/realm/internal/OsRealmConfig;->nativeSetInMemory(JZ)V

    iget-wide v8, v1, Lio/realm/internal/OsRealmConfig;->t:J

    move/from16 v11, p3

    invoke-static {v8, v9, v11}, Lio/realm/internal/OsRealmConfig;->nativeEnableChangeNotification(JZ)V

    if-eqz v15, :cond_4

    const/16 v28, 0x5

    goto :goto_4

    :cond_4
    iget-boolean v8, v0, Lio/realm/J;->e:Z

    if-eqz v8, :cond_5

    const/16 v28, 0x4

    goto :goto_4

    :cond_5
    const/16 v28, 0x6

    :goto_4
    iget-wide v8, v0, Lio/realm/J;->d:J

    if-nez v2, :cond_6

    const-wide/16 v30, 0x0

    move v11, v5

    :goto_5
    move-object v4, v3

    goto :goto_6

    :cond_6
    move v11, v5

    iget-wide v4, v2, Lio/realm/internal/OsSchemaInfo;->b:J

    move-wide/from16 v30, v4

    goto :goto_5

    :goto_6
    iget-wide v2, v1, Lio/realm/internal/OsRealmConfig;->t:J

    const/4 v5, 0x0

    packed-switch v28, :pswitch_data_0

    throw v5

    :pswitch_0
    move/from16 v0, v19

    move-object/from16 v19, v4

    move v4, v0

    move-object v0, v6

    :goto_7
    move-wide/from16 v35, v8

    move-object v8, v5

    move-wide/from16 v5, v35

    goto :goto_8

    :pswitch_1
    move-object/from16 v19, v4

    move-object v0, v6

    const/4 v4, 0x5

    goto :goto_7

    :pswitch_2
    move-object/from16 v19, v4

    move-object v0, v6

    const/4 v4, 0x3

    goto :goto_7

    :pswitch_3
    move-object/from16 v19, v4

    move-object v0, v6

    const/4 v4, 0x2

    goto :goto_7

    :pswitch_4
    move-object/from16 v19, v4

    move-object v0, v6

    const/4 v4, 0x1

    goto :goto_7

    :pswitch_5
    move-object/from16 v19, v4

    move-object v0, v6

    move v4, v12

    goto :goto_7

    :goto_8
    const/4 v9, 0x0

    move/from16 v32, v11

    move-object/from16 v33, v19

    move-object v11, v8

    move-object/from16 v19, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v7

    move-wide/from16 v7, v30

    invoke-direct/range {v1 .. v9}, Lio/realm/internal/OsRealmConfig;->nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V

    if-eqz v15, :cond_e

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Lio/realm/internal/OsRealmConfig;->t:J

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    iget-object v8, v1, Lio/realm/internal/OsRealmConfig;->b:Ljava/lang/Object;

    iget-object v9, v1, Lio/realm/internal/OsRealmConfig;->q:Ljava/lang/Object;

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v34, v19

    move-object/from16 v20, v25

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object v8, v13

    move-object v9, v14

    move-object v7, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move-object/from16 v21, v26

    move v13, v2

    move-object v2, v1

    const/4 v1, 0x1

    invoke-direct/range {v2 .. v21}, Lio/realm/internal/OsRealmConfig;->nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v4, v34

    goto :goto_9

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v4, v34

    invoke-static {v0, v4, v5}, Lio/realm/log/RealmLog;->a(Ljava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_9
    iget-wide v6, v2, Lio/realm/internal/OsRealmConfig;->t:J

    move/from16 v11, v32

    move-object/from16 v8, v33

    invoke-static {v6, v7, v11, v8}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v6

    if-eqz v5, :cond_f

    if-eqz v6, :cond_f

    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string v7, "ws"

    const-string v8, "http"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    goto :goto_a

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v7}, Lio/realm/log/RealmLog;->a(Ljava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v6, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_f

    sget-object v3, Lio/realm/internal/q;->a:[I

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_7

    const/4 v12, -0x1

    goto :goto_b

    :cond_7
    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v3, :cond_d

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_9
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_b

    iget-wide v3, v2, Lio/realm/internal/OsRealmConfig;->t:J

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v3, v4, v12, v1, v0}, Lio/realm/internal/OsRealmConfig;->nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V

    goto :goto_d

    :cond_b
    const-string v0, "Could not retrieve proxy\'s hostname."

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11, v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported proxy socket address type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    const/4 v11, 0x0

    const-string v0, "SOCKS proxies are not supported."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lio/realm/log/RealmLog;->a(Ljava/net/URISyntaxException;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_e
    move-object v2, v1

    move-object v5, v11

    :cond_f
    :goto_d
    iput-object v5, v2, Lio/realm/internal/OsRealmConfig;->s:Ljava/net/URI;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native nativeCreate(Ljava/lang/String;Ljava/lang/String;ZJ)J
.end method

.method private native nativeCreateAndSetSyncConfig(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private static native nativeEnableChangeNotification(JZ)V
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSetInMemory(JZ)V
.end method

.method private native nativeSetInitializationCallback(JLio/realm/internal/OsSharedRealm$InitializationCallback;)V
.end method

.method private native nativeSetSchemaConfig(JBJJLio/realm/internal/OsSharedRealm$MigrationCallback;)V
.end method

.method private static native nativeSetSyncConfigProxySettings(JBLjava/lang/String;I)V
.end method

.method private static native nativeSetSyncConfigSslSettings(JZLjava/lang/String;)V
.end method


# virtual methods
.method public final getNativeFinalizerPtr()J
    .locals 2

    sget-wide v0, Lio/realm/internal/OsRealmConfig;->v:J

    return-wide v0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lio/realm/internal/OsRealmConfig;->t:J

    return-wide v0
.end method
