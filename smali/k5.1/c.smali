.class public final Lk5/c;
.super Ljava/lang/Object;

# interfaces
.implements Lj5/c;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Lk5/o;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lk5/o;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/c;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lk5/c;->b:Lk5/o;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lk5/b;

    invoke-direct {v0, p0}, Lk5/b;-><init>(Lk5/c;)V

    return-object v0
.end method
