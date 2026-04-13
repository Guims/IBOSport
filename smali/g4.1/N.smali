.class public final Lg4/N;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lg4/V;

.field public final b:Lg4/W;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Lg4/G;


# direct methods
.method public constructor <init>(Lg4/V;Lg4/W;)V
    .locals 1

    const-string v0, "timeProvider"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuidGenerator"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/N;->a:Lg4/V;

    iput-object p2, p0, Lg4/N;->b:Lg4/W;

    invoke-virtual {p0}, Lg4/N;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg4/N;->c:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lg4/N;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lg4/N;->b:Lg4/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuidGenerator.next().toString()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk5/n;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
