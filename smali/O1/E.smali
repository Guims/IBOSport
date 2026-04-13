.class public final LO1/E;
.super Ljava/lang/Object;

# interfaces
.implements LO1/r;


# static fields
.field public static final b:Ljava/util/Set;


# instance fields
.field public final a:LO1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http"

    const-string v2, "https"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LO1/E;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(LO1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/E;->a:LO1/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    sget-object v0, LO1/E;->b:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILI1/j;)LO1/q;
    .locals 1

    check-cast p1, Landroid/net/Uri;

    new-instance v0, LO1/h;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LO1/h;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, LO1/E;->a:LO1/r;

    invoke-interface {p1, v0, p2, p3, p4}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object p1

    return-object p1
.end method
