CREATE TABLE IF NOT EXISTS public.rama
(
    id_rama integer NOT NULL DEFAULT nextval('"Rama_id_rama_seq"'::regclass),
    "Nombre" character varying COLLATE pg_catalog."default",
    "Modalida" character varying COLLATE pg_catalog."default",
    id_proyecto integer,
    id_profesor integer,
    CONSTRAINT "Rama_pkey" PRIMARY KEY (id_rama),
    CONSTRAINT id_profesor FOREIGN KEY (id_profesor)
        REFERENCES public.profesor (id_profesor) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_proyecto FOREIGN KEY (id_proyecto)
        REFERENCES public.proyecto (id_proyecto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rama
    OWNER to proyecto_fs_dt_user;
-- Index: fki_id_profesor

-- DROP INDEX IF EXISTS public.fki_id_profesor;

CREATE INDEX IF NOT EXISTS fki_id_profesor
    ON public.rama USING btree
    (id_profesor ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_id_proyecto

-- DROP INDEX IF EXISTS public.fki_id_proyecto;

CREATE INDEX IF NOT EXISTS fki_id_proyecto
    ON public.rama USING btree
    (id_proyecto ASC NULLS LAST)
    TABLESPACE pg_default;


CREATE TABLE IF NOT EXISTS public.proyecto
(
    id_proyecto integer NOT NULL DEFAULT nextval('proyecto_id_proyecto_seq'::regclass),
    "Nombre" text COLLATE pg_catalog."default",
    "Descripcion" text COLLATE pg_catalog."default",
    CONSTRAINT proyecto_pkey PRIMARY KEY (id_proyecto)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.proyecto
    OWNER to proyecto_fs_dt_user;



CREATE TABLE IF NOT EXISTS public.promocion
(
    "Fecha_inicio" date,
    "Fecha_fin" date,
    "NPromocion" integer,
    id_promocion integer NOT NULL DEFAULT nextval('promocion_id_promocion_seq'::regclass),
    CONSTRAINT promocion_pkey PRIMARY KEY (id_promocion)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.promocion
    OWNER to proyecto_fs_dt_user;


CREATE TABLE IF NOT EXISTS public.profesor
(
    id_profesor integer NOT NULL DEFAULT nextval('profesor_id_profesor_seq'::regclass),
    "Nombre" text COLLATE pg_catalog."default",
    "Rol" text COLLATE pg_catalog."default",
    "Email" text COLLATE pg_catalog."default",
    "Fecha_inicio_trabajo" date,
    "Fecha_fin" date,
    id_trabajo integer,
    CONSTRAINT profesor_pkey PRIMARY KEY (id_profesor)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.profesor
    OWNER to proyecto_fs_dt_user;

CREATE TABLE IF NOT EXISTS public.campus
(
    id_campus integer NOT NULL DEFAULT nextval('campus_id_campus_seq'::regclass),
    nombre character varying COLLATE pg_catalog."default",
    id_promocion integer,
    CONSTRAINT campus_pkey PRIMARY KEY (id_campus),
    CONSTRAINT fk_campus FOREIGN KEY (id_campus)
        REFERENCES public.promocion (id_promocion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.campus
    OWNER to proyecto_fs_dt_user;

CREATE TABLE IF NOT EXISTS public.aprobado
(
    id_nota integer NOT NULL DEFAULT nextval('aprobado_id_nota_seq'::regclass),
    id_proyecto integer NOT NULL,
    "Apto" boolean,
    id_alumno integer,
    CONSTRAINT aprobado_pkey PRIMARY KEY (id_nota),
    CONSTRAINT fk_id_alumno FOREIGN KEY (id_alumno)
        REFERENCES public.alumno (id_alumno) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.aprobado
    OWNER to proyecto_fs_dt_user;

CREATE TABLE IF NOT EXISTS public.alumno
(
    id_alumno integer NOT NULL DEFAULT nextval('"Alumno_id_alumno_seq"'::regclass),
    "Nombre" text COLLATE pg_catalog."default",
    "Email" text COLLATE pg_catalog."default",
    id_rama integer,
    id_promocion integer,
    CONSTRAINT alumno_pkey PRIMARY KEY (id_alumno),
    CONSTRAINT fk_alumno FOREIGN KEY (id_promocion)
        REFERENCES public.promocion (id_promocion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT id_rama FOREIGN KEY (id_rama)
        REFERENCES public.rama (id_rama) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.alumno
    OWNER to proyecto_fs_dt_user;
-- Index: fki_id_rama

-- DROP INDEX IF EXISTS public.fki_id_rama;

CREATE INDEX IF NOT EXISTS fki_id_rama
    ON public.alumno USING btree
    (id_rama ASC NULLS LAST)
    TABLESPACE pg_default;