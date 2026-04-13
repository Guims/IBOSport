.class public abstract Lw5/F;
.super Ljava/lang/Object;


# static fields
.field public static final Companion:Lw5/E;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw5/F;->Companion:Lw5/E;

    return-void
.end method

.method public static final create(LK5/j;Lw5/t;)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$toRequestBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/C;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lw5/C;-><init>(Ljava/lang/Object;Lw5/t;I)V

    return-object v0
.end method

.method public static final create(Ljava/io/File;Lw5/t;)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$asRequestBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lw5/C;-><init>(Ljava/lang/Object;Lw5/t;I)V

    return-object v0
.end method

.method public static final create(Ljava/lang/String;Lw5/t;)Lw5/F;
    .locals 1

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lw5/E;->a(Ljava/lang/String;Lw5/t;)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;LK5/j;)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/C;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lw5/C;-><init>(Ljava/lang/Object;Lw5/t;I)V

    return-object v0
.end method

.method public static final create(Lw5/t;Ljava/io/File;)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "file"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lw5/C;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lw5/C;-><init>(Ljava/lang/Object;Lw5/t;I)V

    return-object v0
.end method

.method public static final create(Lw5/t;Ljava/lang/String;)Lw5/F;
    .locals 1

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lw5/E;->a(Ljava/lang/String;Lw5/t;)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;[B)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v1}, Lw5/E;->b([BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;[BI)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, p2, v1}, Lw5/E;->b([BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;[BII)Lw5/F;
    .locals 1

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2, p3}, Lw5/E;->b([BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create([B)Lw5/F;
    .locals 4

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lw5/E;->c(Lw5/E;[BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLw5/t;)Lw5/F;
    .locals 3

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, p1, v1, v2}, Lw5/E;->c(Lw5/E;[BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLw5/t;I)Lw5/F;
    .locals 2

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    const/4 v1, 0x4

    invoke-static {v0, p0, p1, p2, v1}, Lw5/E;->c(Lw5/E;[BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLw5/t;II)Lw5/F;
    .locals 1

    sget-object v0, Lw5/F;->Companion:Lw5/E;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lw5/E;->b([BLw5/t;II)Lw5/D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract contentLength()J
.end method

.method public abstract contentType()Lw5/t;
.end method

.method public isDuplex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeTo(LK5/h;)V
.end method
