.class public final Lio/realm/internal/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lio/realm/RealmFieldType;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/internal/Property;)V
    .locals 3

    invoke-virtual {p1}, Lio/realm/internal/Property;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/Property;->d()Lio/realm/RealmFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/Property;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lio/realm/internal/b;->a:J

    iput-object v2, p0, Lio/realm/internal/b;->b:Lio/realm/RealmFieldType;

    iput-object p1, p0, Lio/realm/internal/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnDetails["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/realm/internal/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/realm/internal/b;->b:Lio/realm/RealmFieldType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/internal/b;->c:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
