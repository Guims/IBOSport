.class final Lorg/apache/hc/core5/http2/hpack/StaticTable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

.field static final STANDARD_HEADERS:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;


# instance fields
.field private final headers:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

.field private final mapByName:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/apache/hc/core5/http2/hpack/HPackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 63

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v0, ":authority"

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v3, "GET"

    const-string v4, ":method"

    invoke-direct {v0, v4, v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v5, "POST"

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v5, "/"

    const-string v6, ":path"

    invoke-direct {v4, v6, v5}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v7, "/index.html"

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v7, "http"

    const-string v8, ":scheme"

    invoke-direct {v6, v8, v7}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v9, "https"

    invoke-direct {v7, v8, v9}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v9, "200"

    const-string v10, ":status"

    invoke-direct {v8, v10, v9}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v11, "204"

    invoke-direct {v9, v10, v11}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v12, "206"

    invoke-direct {v11, v10, v12}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v11

    new-instance v11, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v13, "304"

    invoke-direct {v11, v10, v13}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    new-instance v12, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v14, "400"

    invoke-direct {v12, v10, v14}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    new-instance v13, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v15, "404"

    invoke-direct {v13, v10, v15}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v14

    new-instance v14, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v16, v0

    const-string v0, "500"

    invoke-direct {v14, v10, v0}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v15

    new-instance v15, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v0, "accept-charset"

    invoke-direct {v15, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v17, v1

    const-string v1, "accept-encoding"

    move-object/from16 v18, v3

    const-string v3, "gzip, deflate"

    invoke-direct {v0, v1, v3}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    const-string v3, "accept-language"

    invoke-direct {v1, v3, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v19, v0

    const-string v0, "accept-ranges"

    invoke-direct {v3, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v20, v1

    const-string v1, "accept"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v21, v0

    const-string v0, "access-control-allow-origin"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v22, v1

    const-string v1, "age"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v23, v0

    const-string v0, "allow"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v24, v1

    const-string v1, "authorization"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v25, v0

    const-string v0, "cache-control"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v26, v1

    const-string v1, "content-disposition"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v27, v0

    const-string v0, "content-encoding"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v28, v1

    const-string v1, "content-language"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v29, v0

    const-string v0, "content-length"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v30, v1

    const-string v1, "content-location"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v31, v0

    const-string v0, "content-range"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v32, v1

    const-string v1, "content-type"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v33, v0

    const-string v0, "cookie"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v34, v1

    const-string v1, "date"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v35, v0

    const-string v0, "etag"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v36, v1

    const-string v1, "expect"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v37, v0

    const-string v0, "expires"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v38, v1

    const-string v1, "from"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v39, v0

    const-string v0, "host"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v40, v1

    const-string v1, "if-match"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v41, v0

    const-string v0, "if-modified-since"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v42, v1

    const-string v1, "if-none-match"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v43, v0

    const-string v0, "if-range"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v44, v1

    const-string v1, "if-unmodified-since"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v45, v0

    const-string v0, "last-modified"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v46, v1

    const-string v1, "link"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v47, v0

    const-string v0, "location"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v48, v1

    const-string v1, "max-forwards"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v49, v0

    const-string v0, "proxy-authenticate"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v50, v1

    const-string v1, "proxy-authorization"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v51, v0

    const-string v0, "range"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v52, v1

    const-string v1, "referer"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v53, v0

    const-string v0, "refresh"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v54, v1

    const-string v1, "retry-after"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v55, v0

    const-string v0, "server"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v56, v1

    const-string v1, "set-cookie"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v57, v0

    const-string v0, "strict-transport-security"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v58, v1

    const-string v1, "transfer-encoding"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v59, v0

    const-string v0, "user-agent"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v60, v1

    const-string v1, "vary"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v61, v0

    const-string v0, "via"

    invoke-direct {v1, v0, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-object/from16 v62, v1

    const-string v1, "www-authenticate"

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v18

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v40

    move-object/from16 v39, v41

    move-object/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v44

    move-object/from16 v43, v45

    move-object/from16 v44, v46

    move-object/from16 v45, v47

    move-object/from16 v46, v48

    move-object/from16 v47, v49

    move-object/from16 v48, v50

    move-object/from16 v49, v51

    move-object/from16 v50, v52

    move-object/from16 v51, v53

    move-object/from16 v52, v54

    move-object/from16 v53, v55

    move-object/from16 v54, v56

    move-object/from16 v55, v57

    move-object/from16 v56, v58

    move-object/from16 v57, v59

    move-object/from16 v58, v60

    move-object/from16 v59, v61

    move-object/from16 v60, v62

    move-object/from16 v61, v0

    filled-new-array/range {v1 .. v61}, [Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->STANDARD_HEADERS:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    new-instance v1, Lorg/apache/hc/core5/http2/hpack/StaticTable;

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http2/hpack/StaticTable;-><init>([Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V

    sput-object v1, Lorg/apache/hc/core5/http2/hpack/StaticTable;->INSTANCE:Lorg/apache/hc/core5/http2/hpack/StaticTable;

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/hc/core5/http2/hpack/HPackHeader;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->headers:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->mapByName:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/hpack/HPackHeader;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->mapByName:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;

    invoke-direct {v5, v2, v1}, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;-><init>(Lorg/apache/hc/core5/http2/hpack/HPackHeader;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/hc/core5/http2/hpack/HPackEntry;

    aput-object v5, v2, v0

    invoke-direct {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->mapByName:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;

    invoke-direct {v3, v2, v1}, Lorg/apache/hc/core5/http2/hpack/StaticTable$InternalEntry;-><init>(Lorg/apache/hc/core5/http2/hpack/HPackHeader;I)V

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public get(I)Lorg/apache/hc/core5/http2/hpack/HPackHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->headers:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http2/hpack/HPackEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->mapByName:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/hpack/StaticTable;->headers:[Lorg/apache/hc/core5/http2/hpack/HPackHeader;

    array-length v0, v0

    return v0
.end method
